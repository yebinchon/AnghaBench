
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int len; int data; } ;
struct rtl8169_private {unsigned int cur_tx; TYPE_3__* tx_skb; struct TxDesc* TxDescArray; } ;
struct TYPE_4__ {int tx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct device {int dummy; } ;
struct TxDesc {int opts1; int opts2; int addr; } ;
typedef int netdev_tx_t ;
typedef int dma_addr_t ;
struct TYPE_6__ {int len; struct sk_buff* skb; } ;
struct TYPE_5__ {int nr_frags; } ;


 int DMA_TO_DEVICE ;
 int DescOwn ;
 int FirstFrag ;
 int LastFrag ;
 int MAX_SKB_FRAGS ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 unsigned int NUM_TX_DESC ;
 int __netdev_sent_queue (struct net_device*,int ,int ) ;
 int cpu_to_le32 (int) ;
 int cpu_to_le64 (int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_map_single (struct device*,int ,int,int ) ;
 int dma_mapping_error (struct device*,int ) ;
 int dma_wmb () ;
 int drv ;
 int le32_to_cpu (int ) ;
 scalar_t__ net_ratelimit () ;
 struct rtl8169_private* netdev_priv (struct net_device*) ;
 int netdev_xmit_more () ;
 int netif_err (struct rtl8169_private*,int ,struct net_device*,char*) ;
 int netif_start_queue (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int rtl8169_doorbell (struct rtl8169_private*) ;
 int rtl8169_get_txd_opts1 (int,int,unsigned int) ;
 int rtl8169_tso_csum_v1 (struct sk_buff*,int*) ;
 int rtl8169_tso_csum_v2 (struct rtl8169_private*,struct sk_buff*,int*) ;
 int rtl8169_tx_vlan_tag (struct sk_buff*) ;
 int rtl8169_unmap_tx_skb (struct device*,TYPE_3__*,struct TxDesc*) ;
 int rtl8169_xmit_frags (struct rtl8169_private*,struct sk_buff*,int*) ;
 scalar_t__ rtl_chip_supports_csum_v2 (struct rtl8169_private*) ;
 scalar_t__ rtl_tx_slots_avail (struct rtl8169_private*,int ) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 int skb_tx_timestamp (struct sk_buff*) ;
 int smp_mb () ;
 int smp_wmb () ;
 struct device* tp_to_dev (struct rtl8169_private*) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

__attribute__((used)) static netdev_tx_t rtl8169_start_xmit(struct sk_buff *skb,
          struct net_device *dev)
{
 struct rtl8169_private *tp = netdev_priv(dev);
 unsigned int entry = tp->cur_tx % NUM_TX_DESC;
 struct TxDesc *txd = tp->TxDescArray + entry;
 struct device *d = tp_to_dev(tp);
 dma_addr_t mapping;
 u32 opts[2], len;
 bool stop_queue;
 bool door_bell;
 int frags;

 if (unlikely(!rtl_tx_slots_avail(tp, skb_shinfo(skb)->nr_frags))) {
  netif_err(tp, drv, dev, "BUG! Tx Ring full when queue awake!\n");
  goto err_stop_0;
 }

 if (unlikely(le32_to_cpu(txd->opts1) & DescOwn))
  goto err_stop_0;

 opts[1] = rtl8169_tx_vlan_tag(skb);
 opts[0] = DescOwn;

 if (rtl_chip_supports_csum_v2(tp)) {
  if (!rtl8169_tso_csum_v2(tp, skb, opts))
   goto err_dma_0;
 } else {
  rtl8169_tso_csum_v1(skb, opts);
 }

 len = skb_headlen(skb);
 mapping = dma_map_single(d, skb->data, len, DMA_TO_DEVICE);
 if (unlikely(dma_mapping_error(d, mapping))) {
  if (net_ratelimit())
   netif_err(tp, drv, dev, "Failed to map TX DMA!\n");
  goto err_dma_0;
 }

 tp->tx_skb[entry].len = len;
 txd->addr = cpu_to_le64(mapping);

 frags = rtl8169_xmit_frags(tp, skb, opts);
 if (frags < 0)
  goto err_dma_1;
 else if (frags)
  opts[0] |= FirstFrag;
 else {
  opts[0] |= FirstFrag | LastFrag;
  tp->tx_skb[entry].skb = skb;
 }

 txd->opts2 = cpu_to_le32(opts[1]);

 skb_tx_timestamp(skb);


 dma_wmb();

 door_bell = __netdev_sent_queue(dev, skb->len, netdev_xmit_more());

 txd->opts1 = rtl8169_get_txd_opts1(opts[0], len, entry);


 wmb();

 tp->cur_tx += frags + 1;

 stop_queue = !rtl_tx_slots_avail(tp, MAX_SKB_FRAGS);
 if (unlikely(stop_queue)) {



  smp_wmb();
  netif_stop_queue(dev);
  door_bell = 1;
 }

 if (door_bell)
  rtl8169_doorbell(tp);

 if (unlikely(stop_queue)) {







  smp_mb();
  if (rtl_tx_slots_avail(tp, MAX_SKB_FRAGS))
   netif_start_queue(dev);
 }

 return NETDEV_TX_OK;

err_dma_1:
 rtl8169_unmap_tx_skb(d, tp->tx_skb + entry, txd);
err_dma_0:
 dev_kfree_skb_any(skb);
 dev->stats.tx_dropped++;
 return NETDEV_TX_OK;

err_stop_0:
 netif_stop_queue(dev);
 dev->stats.tx_dropped++;
 return NETDEV_TX_BUSY;
}
