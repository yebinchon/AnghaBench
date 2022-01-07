
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int qpl_id_map; } ;
struct gve_priv {int qpls; TYPE_1__ qpl_cfg; } ;


 int gve_free_queue_page_list (struct gve_priv*,int) ;
 int gve_num_rx_qpls (struct gve_priv*) ;
 int gve_num_tx_qpls (struct gve_priv*) ;
 int kvfree (int ) ;

__attribute__((used)) static void gve_free_qpls(struct gve_priv *priv)
{
 int num_qpls = gve_num_tx_qpls(priv) + gve_num_rx_qpls(priv);
 int i;

 kvfree(priv->qpl_cfg.qpl_id_map);

 for (i = 0; i < num_qpls; i++)
  gve_free_queue_page_list(priv, i);

 kvfree(priv->qpls);
}
