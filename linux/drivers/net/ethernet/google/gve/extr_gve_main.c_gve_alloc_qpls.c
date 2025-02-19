
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int qpl_map_size; void* qpl_id_map; } ;
struct gve_priv {void* qpls; TYPE_1__ qpl_cfg; int rx_pages_per_qpl; int tx_pages_per_qpl; } ;


 int BITS_PER_BYTE ;
 int BITS_TO_LONGS (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int gve_alloc_queue_page_list (struct gve_priv*,int,int ) ;
 int gve_free_queue_page_list (struct gve_priv*,int) ;
 int gve_num_rx_qpls (struct gve_priv*) ;
 int gve_num_tx_qpls (struct gve_priv*) ;
 int kvfree (void*) ;
 void* kvzalloc (int,int ) ;

__attribute__((used)) static int gve_alloc_qpls(struct gve_priv *priv)
{
 int num_qpls = gve_num_tx_qpls(priv) + gve_num_rx_qpls(priv);
 int i, j;
 int err;

 priv->qpls = kvzalloc(num_qpls * sizeof(*priv->qpls), GFP_KERNEL);
 if (!priv->qpls)
  return -ENOMEM;

 for (i = 0; i < gve_num_tx_qpls(priv); i++) {
  err = gve_alloc_queue_page_list(priv, i,
      priv->tx_pages_per_qpl);
  if (err)
   goto free_qpls;
 }
 for (; i < num_qpls; i++) {
  err = gve_alloc_queue_page_list(priv, i,
      priv->rx_pages_per_qpl);
  if (err)
   goto free_qpls;
 }

 priv->qpl_cfg.qpl_map_size = BITS_TO_LONGS(num_qpls) *
         sizeof(unsigned long) * BITS_PER_BYTE;
 priv->qpl_cfg.qpl_id_map = kvzalloc(BITS_TO_LONGS(num_qpls) *
         sizeof(unsigned long), GFP_KERNEL);
 if (!priv->qpl_cfg.qpl_id_map) {
  err = -ENOMEM;
  goto free_qpls;
 }

 return 0;

free_qpls:
 for (j = 0; j <= i; j++)
  gve_free_queue_page_list(priv, j);
 kvfree(priv->qpls);
 return err;
}
