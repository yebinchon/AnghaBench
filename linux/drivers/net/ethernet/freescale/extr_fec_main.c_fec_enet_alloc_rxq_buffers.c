
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct fec_enet_private {scalar_t__ bufdesc_ex; struct fec_enet_priv_rx_q** rx_queue; } ;
struct TYPE_3__ {unsigned int ring_size; struct bufdesc* base; } ;
struct fec_enet_priv_rx_q {TYPE_1__ bd; struct sk_buff** rx_skbuff; } ;
struct bufdesc_ex {int cbd_esc; } ;
struct bufdesc {int cbd_sc; } ;


 int BD_ENET_RX_EMPTY ;
 int BD_ENET_RX_INT ;
 int BD_SC_WRAP ;
 int ENOMEM ;
 int FEC_ENET_RX_FRSIZE ;
 int cpu_to_fec16 (int ) ;
 int cpu_to_fec32 (int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int fec_enet_free_buffers (struct net_device*) ;
 struct bufdesc* fec_enet_get_nextdesc (struct bufdesc*,TYPE_1__*) ;
 struct bufdesc* fec_enet_get_prevdesc (struct bufdesc*,TYPE_1__*) ;
 scalar_t__ fec_enet_new_rxbdp (struct net_device*,struct bufdesc*,struct sk_buff*) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,int ) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
fec_enet_alloc_rxq_buffers(struct net_device *ndev, unsigned int queue)
{
 struct fec_enet_private *fep = netdev_priv(ndev);
 unsigned int i;
 struct sk_buff *skb;
 struct bufdesc *bdp;
 struct fec_enet_priv_rx_q *rxq;

 rxq = fep->rx_queue[queue];
 bdp = rxq->bd.base;
 for (i = 0; i < rxq->bd.ring_size; i++) {
  skb = netdev_alloc_skb(ndev, FEC_ENET_RX_FRSIZE);
  if (!skb)
   goto err_alloc;

  if (fec_enet_new_rxbdp(ndev, bdp, skb)) {
   dev_kfree_skb(skb);
   goto err_alloc;
  }

  rxq->rx_skbuff[i] = skb;
  bdp->cbd_sc = cpu_to_fec16(BD_ENET_RX_EMPTY);

  if (fep->bufdesc_ex) {
   struct bufdesc_ex *ebdp = (struct bufdesc_ex *)bdp;
   ebdp->cbd_esc = cpu_to_fec32(BD_ENET_RX_INT);
  }

  bdp = fec_enet_get_nextdesc(bdp, &rxq->bd);
 }


 bdp = fec_enet_get_prevdesc(bdp, &rxq->bd);
 bdp->cbd_sc |= cpu_to_fec16(BD_SC_WRAP);
 return 0;

 err_alloc:
 fec_enet_free_buffers(ndev);
 return -ENOMEM;
}
