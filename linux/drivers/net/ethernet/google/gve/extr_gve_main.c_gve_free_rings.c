
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_queues; } ;
struct TYPE_4__ {int num_queues; } ;
struct gve_priv {int * rx; TYPE_1__ rx_cfg; int * tx; TYPE_2__ tx_cfg; } ;


 int gve_remove_napi (struct gve_priv*,int) ;
 int gve_rx_free_rings (struct gve_priv*) ;
 int gve_rx_idx_to_ntfy (struct gve_priv*,int) ;
 int gve_tx_free_rings (struct gve_priv*) ;
 int gve_tx_idx_to_ntfy (struct gve_priv*,int) ;
 int kvfree (int *) ;

__attribute__((used)) static void gve_free_rings(struct gve_priv *priv)
{
 int ntfy_idx;
 int i;

 if (priv->tx) {
  for (i = 0; i < priv->tx_cfg.num_queues; i++) {
   ntfy_idx = gve_tx_idx_to_ntfy(priv, i);
   gve_remove_napi(priv, ntfy_idx);
  }
  gve_tx_free_rings(priv);
  kvfree(priv->tx);
  priv->tx = ((void*)0);
 }
 if (priv->rx) {
  for (i = 0; i < priv->rx_cfg.num_queues; i++) {
   ntfy_idx = gve_rx_idx_to_ntfy(priv, i);
   gve_remove_napi(priv, ntfy_idx);
  }
  gve_rx_free_rings(priv);
  kvfree(priv->rx);
  priv->rx = ((void*)0);
 }
}
