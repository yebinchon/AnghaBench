
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_queues; } ;
struct TYPE_3__ {int num_queues; } ;
struct gve_priv {struct gve_notify_block* ntfy_blocks; TYPE_2__ rx_cfg; TYPE_1__ tx_cfg; int dev; } ;
struct gve_notify_block {int napi; } ;


 int gve_irq_doorbell (struct gve_priv*,struct gve_notify_block*) ;
 int gve_rx_idx_to_ntfy (struct gve_priv*,int) ;
 int gve_set_napi_enabled (struct gve_priv*) ;
 int gve_tx_idx_to_ntfy (struct gve_priv*,int) ;
 int iowrite32be (int ,int ) ;
 int napi_enable (int *) ;
 int netif_tx_start_all_queues (int ) ;

__attribute__((used)) static void gve_turnup(struct gve_priv *priv)
{
 int idx;


 netif_tx_start_all_queues(priv->dev);


 for (idx = 0; idx < priv->tx_cfg.num_queues; idx++) {
  int ntfy_idx = gve_tx_idx_to_ntfy(priv, idx);
  struct gve_notify_block *block = &priv->ntfy_blocks[ntfy_idx];

  napi_enable(&block->napi);
  iowrite32be(0, gve_irq_doorbell(priv, block));
 }
 for (idx = 0; idx < priv->rx_cfg.num_queues; idx++) {
  int ntfy_idx = gve_rx_idx_to_ntfy(priv, idx);
  struct gve_notify_block *block = &priv->ntfy_blocks[ntfy_idx];

  napi_enable(&block->napi);
  iowrite32be(0, gve_irq_doorbell(priv, block));
 }

 gve_set_napi_enabled(priv);
}
