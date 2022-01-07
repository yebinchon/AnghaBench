
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int protocol; scalar_t__ data; struct net_device* dev; } ;
struct TYPE_4__ {int rx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct TYPE_5__ {int (* copy_from_card ) (struct net_device*,int,int,scalar_t__,int) ;} ;
struct arcnet_local {TYPE_2__ hw; } ;
struct TYPE_6__ {scalar_t__ raw; } ;
struct archdr {TYPE_3__ soft; } ;


 scalar_t__ ARC_HDR_SIZE ;
 scalar_t__ BUGLVL (int ) ;
 int D_DURING ;
 int D_SKB ;
 int ETH_P_ARCNET ;
 int GFP_ATOMIC ;
 int MTU ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 int arc_printk (int ,struct net_device*,char*,int) ;
 int arcnet_dump_skb (struct net_device*,struct sk_buff*,char*) ;
 int cpu_to_be16 (int ) ;
 int memcpy (struct archdr*,struct archdr*,int) ;
 struct arcnet_local* netdev_priv (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,scalar_t__) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int stub1 (struct net_device*,int,int,scalar_t__,int) ;

__attribute__((used)) static void rx(struct net_device *dev, int bufnum,
        struct archdr *pkthdr, int length)
{
 struct arcnet_local *lp = netdev_priv(dev);
 struct sk_buff *skb;
 struct archdr *pkt = pkthdr;
 int ofs;

 arc_printk(D_DURING, dev, "it's a raw packet (length=%d)\n", length);

 if (length > MTU)
  ofs = 512 - length;
 else
  ofs = 256 - length;

 skb = alloc_skb(length + ARC_HDR_SIZE, GFP_ATOMIC);
 if (!skb) {
  dev->stats.rx_dropped++;
  return;
 }
 skb_put(skb, length + ARC_HDR_SIZE);
 skb->dev = dev;

 pkt = (struct archdr *)skb->data;

 skb_reset_mac_header(skb);
 skb_pull(skb, ARC_HDR_SIZE);


 memcpy(pkt, pkthdr, sizeof(struct archdr));
 if (length > sizeof(pkt->soft))
  lp->hw.copy_from_card(dev, bufnum, ofs + sizeof(pkt->soft),
          pkt->soft.raw + sizeof(pkt->soft),
          length - sizeof(pkt->soft));

 if (BUGLVL(D_SKB))
  arcnet_dump_skb(dev, skb, "rx");

 skb->protocol = cpu_to_be16(ETH_P_ARCNET);
 netif_rx(skb);
}
