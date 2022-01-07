
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int ip_summed; int protocol; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int proc_idx; int done_idx; int ndesc; TYPE_3__* desc; } ;
struct TYPE_4__ {unsigned int packets; unsigned int bytes; int syncp; int errors; } ;
struct ave_private {TYPE_2__ rx; TYPE_1__ stats_rx; } ;
struct TYPE_6__ {struct sk_buff* skbs; } ;


 int AVE_DESCID_RX ;
 int AVE_STS_CSER ;
 int AVE_STS_CSSV ;
 int AVE_STS_OK ;
 int AVE_STS_OWN ;
 int AVE_STS_PKTLEN_RX_MASK ;
 int CHECKSUM_UNNECESSARY ;
 int DMA_FROM_DEVICE ;
 int ave_desc_read_cmdsts (struct net_device*,int ,int) ;
 int ave_dma_unmap (struct net_device*,TYPE_3__*,int ) ;
 scalar_t__ ave_rxdesc_prepare (struct net_device*,int) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 struct ave_private* netdev_priv (struct net_device*) ;
 int netif_receive_skb (struct sk_buff*) ;
 int skb_put (struct sk_buff*,unsigned int) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static int ave_rx_receive(struct net_device *ndev, int num)
{
 struct ave_private *priv = netdev_priv(ndev);
 unsigned int rx_packets = 0;
 unsigned int rx_bytes = 0;
 u32 proc_idx, done_idx;
 struct sk_buff *skb;
 unsigned int pktlen;
 int restpkt, npkts;
 u32 ndesc, cmdsts;

 proc_idx = priv->rx.proc_idx;
 done_idx = priv->rx.done_idx;
 ndesc = priv->rx.ndesc;
 restpkt = ((proc_idx + ndesc - 1) - done_idx) % ndesc;

 for (npkts = 0; npkts < num; npkts++) {

  if (--restpkt < 0)
   break;

  cmdsts = ave_desc_read_cmdsts(ndev, AVE_DESCID_RX, proc_idx);


  if (!(cmdsts & AVE_STS_OWN))
   break;

  if (!(cmdsts & AVE_STS_OK)) {
   priv->stats_rx.errors++;
   proc_idx = (proc_idx + 1) % ndesc;
   continue;
  }

  pktlen = cmdsts & AVE_STS_PKTLEN_RX_MASK;


  skb = priv->rx.desc[proc_idx].skbs;
  priv->rx.desc[proc_idx].skbs = ((void*)0);

  ave_dma_unmap(ndev, &priv->rx.desc[proc_idx], DMA_FROM_DEVICE);

  skb->dev = ndev;
  skb_put(skb, pktlen);
  skb->protocol = eth_type_trans(skb, ndev);

  if ((cmdsts & AVE_STS_CSSV) && (!(cmdsts & AVE_STS_CSER)))
   skb->ip_summed = CHECKSUM_UNNECESSARY;

  rx_packets++;
  rx_bytes += pktlen;

  netif_receive_skb(skb);

  proc_idx = (proc_idx + 1) % ndesc;
 }

 priv->rx.proc_idx = proc_idx;


 u64_stats_update_begin(&priv->stats_rx.syncp);
 priv->stats_rx.packets += rx_packets;
 priv->stats_rx.bytes += rx_bytes;
 u64_stats_update_end(&priv->stats_rx.syncp);


 while (proc_idx != done_idx) {
  if (ave_rxdesc_prepare(ndev, done_idx))
   break;
  done_idx = (done_idx + 1) % ndesc;
 }

 priv->rx.done_idx = done_idx;

 return npkts;
}
