
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netsec_priv {struct net_device* ndev; } ;
struct net_device {int dummy; } ;


 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int netsec_clean_tx_dring (struct netsec_priv*) ;
 int smp_wmb () ;

__attribute__((used)) static void netsec_process_tx(struct netsec_priv *priv)
{
 struct net_device *ndev = priv->ndev;
 bool cleaned;

 cleaned = netsec_clean_tx_dring(priv);

 if (cleaned && netif_queue_stopped(ndev)) {



  smp_wmb();
  netif_wake_queue(ndev);
 }
}
