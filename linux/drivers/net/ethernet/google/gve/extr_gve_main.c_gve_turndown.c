
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_queues; } ;
struct TYPE_3__ {int num_queues; } ;
struct gve_priv {int dev; struct gve_notify_block* ntfy_blocks; TYPE_2__ rx_cfg; TYPE_1__ tx_cfg; } ;
struct gve_notify_block {int napi; } ;


 int gve_clear_napi_enabled (struct gve_priv*) ;
 int gve_get_napi_enabled (struct gve_priv*) ;
 int gve_rx_idx_to_ntfy (struct gve_priv*,int) ;
 int gve_tx_idx_to_ntfy (struct gve_priv*,int) ;
 int napi_disable (int *) ;
 int netif_carrier_off (int ) ;
 scalar_t__ netif_carrier_ok (int ) ;
 int netif_tx_disable (int ) ;

__attribute__((used)) static void gve_turndown(struct gve_priv *priv)
{
 int idx;

 if (netif_carrier_ok(priv->dev))
  netif_carrier_off(priv->dev);

 if (!gve_get_napi_enabled(priv))
  return;


 for (idx = 0; idx < priv->tx_cfg.num_queues; idx++) {
  int ntfy_idx = gve_tx_idx_to_ntfy(priv, idx);
  struct gve_notify_block *block = &priv->ntfy_blocks[ntfy_idx];

  napi_disable(&block->napi);
 }
 for (idx = 0; idx < priv->rx_cfg.num_queues; idx++) {
  int ntfy_idx = gve_rx_idx_to_ntfy(priv, idx);
  struct gve_notify_block *block = &priv->ntfy_blocks[ntfy_idx];

  napi_disable(&block->napi);
 }


 netif_tx_disable(priv->dev);

 gve_clear_napi_enabled(priv);
}
