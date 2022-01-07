
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ec_bhf_priv {size_t tx_dnext; int net_dev; int * tx_descs; } ;


 scalar_t__ ec_bhf_desc_sent (int *) ;
 int netif_queue_stopped (int ) ;
 int netif_wake_queue (int ) ;
 int smp_rmb () ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void ec_bhf_process_tx(struct ec_bhf_priv *priv)
{
 if (unlikely(netif_queue_stopped(priv->net_dev))) {

  smp_rmb();

  if (ec_bhf_desc_sent(&priv->tx_descs[priv->tx_dnext]))
   netif_wake_queue(priv->net_dev);
 }
}
