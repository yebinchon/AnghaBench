
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gve_priv {struct gve_notify_block* ntfy_blocks; } ;
struct gve_notify_block {int * tx; } ;


 size_t gve_tx_idx_to_ntfy (struct gve_priv*,int) ;

__attribute__((used)) static void gve_tx_remove_from_block(struct gve_priv *priv, int queue_idx)
{
 struct gve_notify_block *block =
   &priv->ntfy_blocks[gve_tx_idx_to_ntfy(priv, queue_idx)];

 block->tx = ((void*)0);
}
