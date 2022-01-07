
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct timespec64 {int tv_nsec; int tv_sec; } ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct sk_buff {int offload_fwd_mark; int protocol; } ;
struct ocelot {int bridge_mask; int ptp_info; scalar_t__ ptp; TYPE_1__** ports; } ;
struct TYPE_4__ {int rx_bytes; int rx_packets; } ;
struct net_device {int features; TYPE_2__ stats; } ;
struct frame_info {size_t port; int len; int timestamp; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {struct net_device* dev; } ;


 int BIT (int) ;
 int ENOMEM ;
 int ETH_FCS_LEN ;
 int GENMASK_ULL (int,int) ;
 int IFH_LEN ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int NETIF_F_RXFCS ;
 int QS_XTR_DATA_PRESENT ;
 int QS_XTR_RD ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int ktime_set (int ,int ) ;
 int memset (struct skb_shared_hwtstamps*,int ,int) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,int) ;
 int netdev_err (struct net_device*,char*) ;
 int netif_rx (struct sk_buff*) ;
 int ocelot_parse_ifh (int *,struct frame_info*) ;
 int ocelot_ptp_gettime64 (int *,struct timespec64*) ;
 int ocelot_read (struct ocelot*,int ) ;
 int ocelot_read_rix (struct ocelot*,int ,int) ;
 int ocelot_rx_frame_word (struct ocelot*,int,int,int *) ;
 struct skb_shared_hwtstamps* skb_hwtstamps (struct sk_buff*) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t ocelot_xtr_irq_handler(int irq, void *arg)
{
 struct ocelot *ocelot = arg;
 int i = 0, grp = 0;
 int err = 0;

 if (!(ocelot_read(ocelot, QS_XTR_DATA_PRESENT) & BIT(grp)))
  return IRQ_NONE;

 do {
  struct skb_shared_hwtstamps *shhwtstamps;
  u64 tod_in_ns, full_ts_in_ns;
  struct frame_info info = {};
  struct net_device *dev;
  u32 ifh[4], val, *buf;
  struct timespec64 ts;
  int sz, len, buf_len;
  struct sk_buff *skb;

  for (i = 0; i < IFH_LEN; i++) {
   err = ocelot_rx_frame_word(ocelot, grp, 1, &ifh[i]);
   if (err != 4)
    break;
  }

  if (err != 4)
   break;

  ocelot_parse_ifh(ifh, &info);

  dev = ocelot->ports[info.port]->dev;

  skb = netdev_alloc_skb(dev, info.len);

  if (unlikely(!skb)) {
   netdev_err(dev, "Unable to allocate sk_buff\n");
   err = -ENOMEM;
   break;
  }
  buf_len = info.len - ETH_FCS_LEN;
  buf = (u32 *)skb_put(skb, buf_len);

  len = 0;
  do {
   sz = ocelot_rx_frame_word(ocelot, grp, 0, &val);
   *buf++ = val;
   len += sz;
  } while (len < buf_len);


  sz = ocelot_rx_frame_word(ocelot, grp, 0, &val);

  len -= ETH_FCS_LEN - sz;

  if (unlikely(dev->features & NETIF_F_RXFCS)) {
   buf = (u32 *)skb_put(skb, ETH_FCS_LEN);
   *buf = val;
  }

  if (sz < 0) {
   err = sz;
   break;
  }

  if (ocelot->ptp) {
   ocelot_ptp_gettime64(&ocelot->ptp_info, &ts);

   tod_in_ns = ktime_set(ts.tv_sec, ts.tv_nsec);
   if ((tod_in_ns & 0xffffffff) < info.timestamp)
    full_ts_in_ns = (((tod_in_ns >> 32) - 1) << 32) |
      info.timestamp;
   else
    full_ts_in_ns = (tod_in_ns & GENMASK_ULL(63, 32)) |
      info.timestamp;

   shhwtstamps = skb_hwtstamps(skb);
   memset(shhwtstamps, 0, sizeof(struct skb_shared_hwtstamps));
   shhwtstamps->hwtstamp = full_ts_in_ns;
  }




  if (ocelot->bridge_mask & BIT(info.port))
   skb->offload_fwd_mark = 1;

  skb->protocol = eth_type_trans(skb, dev);
  netif_rx(skb);
  dev->stats.rx_bytes += len;
  dev->stats.rx_packets++;
 } while (ocelot_read(ocelot, QS_XTR_DATA_PRESENT) & BIT(grp));

 if (err)
  while (ocelot_read(ocelot, QS_XTR_DATA_PRESENT) & BIT(grp))
   ocelot_read_rix(ocelot, QS_XTR_RD, grp);

 return IRQ_HANDLED;
}
