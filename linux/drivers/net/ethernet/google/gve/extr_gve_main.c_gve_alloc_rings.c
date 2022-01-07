
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int num_queues; } ;
struct TYPE_4__ {int num_queues; } ;
struct gve_priv {TYPE_3__* tx; TYPE_3__* rx; TYPE_2__ rx_cfg; TYPE_1__ tx_cfg; } ;
struct TYPE_6__ {int statss; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int gve_add_napi (struct gve_priv*,int) ;
 int gve_rx_alloc_rings (struct gve_priv*) ;
 int gve_rx_idx_to_ntfy (struct gve_priv*,int) ;
 int gve_tx_alloc_rings (struct gve_priv*) ;
 int gve_tx_free_rings (struct gve_priv*) ;
 int gve_tx_idx_to_ntfy (struct gve_priv*,int) ;
 int kvfree (TYPE_3__*) ;
 void* kvzalloc (int,int ) ;
 int u64_stats_init (int *) ;

__attribute__((used)) static int gve_alloc_rings(struct gve_priv *priv)
{
 int ntfy_idx;
 int err;
 int i;


 priv->tx = kvzalloc(priv->tx_cfg.num_queues * sizeof(*priv->tx),
       GFP_KERNEL);
 if (!priv->tx)
  return -ENOMEM;
 err = gve_tx_alloc_rings(priv);
 if (err)
  goto free_tx;

 priv->rx = kvzalloc(priv->rx_cfg.num_queues * sizeof(*priv->rx),
       GFP_KERNEL);
 if (!priv->rx) {
  err = -ENOMEM;
  goto free_tx_queue;
 }
 err = gve_rx_alloc_rings(priv);
 if (err)
  goto free_rx;

 for (i = 0; i < priv->tx_cfg.num_queues; i++) {
  u64_stats_init(&priv->tx[i].statss);
  ntfy_idx = gve_tx_idx_to_ntfy(priv, i);
  gve_add_napi(priv, ntfy_idx);
 }

 for (i = 0; i < priv->rx_cfg.num_queues; i++) {
  u64_stats_init(&priv->rx[i].statss);
  ntfy_idx = gve_rx_idx_to_ntfy(priv, i);
  gve_add_napi(priv, ntfy_idx);
 }

 return 0;

free_rx:
 kvfree(priv->rx);
 priv->rx = ((void*)0);
free_tx_queue:
 gve_tx_free_rings(priv);
free_tx:
 kvfree(priv->tx);
 priv->tx = ((void*)0);
 return err;
}
