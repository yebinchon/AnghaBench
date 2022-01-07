
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netsec_priv {int ndev; struct netsec_desc_ring* desc_ring; } ;
struct netsec_desc_ring {int dummy; } ;


 int DESC_NUM ;
 int NETDEV_TX_BUSY ;
 size_t NETSEC_RING_TX ;
 int netif_stop_queue (int ) ;
 int netif_wake_queue (int ) ;
 int netsec_desc_used (struct netsec_desc_ring*) ;
 int smp_rmb () ;

__attribute__((used)) static int netsec_check_stop_tx(struct netsec_priv *priv, int used)
{
 struct netsec_desc_ring *dring = &priv->desc_ring[NETSEC_RING_TX];


 if (DESC_NUM - used < 2) {
  netif_stop_queue(priv->ndev);




  smp_rmb();

  used = netsec_desc_used(dring);
  if (DESC_NUM - used < 2)
   return NETDEV_TX_BUSY;

  netif_wake_queue(priv->ndev);
 }

 return 0;
}
