
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gve_priv {struct gve_notify_block* ntfy_blocks; } ;
struct gve_notify_block {int napi; } ;


 int netif_napi_del (int *) ;

__attribute__((used)) static void gve_remove_napi(struct gve_priv *priv, int ntfy_idx)
{
 struct gve_notify_block *block = &priv->ntfy_blocks[ntfy_idx];

 netif_napi_del(&block->napi);
}
