
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gve_priv {TYPE_1__* qpls; int dev; } ;
struct TYPE_2__ {int id; } ;


 int drv ;
 int gve_adminq_register_page_list (struct gve_priv*,TYPE_1__*) ;
 int gve_num_rx_qpls (struct gve_priv*) ;
 int gve_num_tx_qpls (struct gve_priv*) ;
 int netif_err (struct gve_priv*,int ,int ,char*,int ) ;

__attribute__((used)) static int gve_register_qpls(struct gve_priv *priv)
{
 int num_qpls = gve_num_tx_qpls(priv) + gve_num_rx_qpls(priv);
 int err;
 int i;

 for (i = 0; i < num_qpls; i++) {
  err = gve_adminq_register_page_list(priv, &priv->qpls[i]);
  if (err) {
   netif_err(priv, drv, priv->dev,
      "failed to register queue page list %d\n",
      priv->qpls[i].id);



   return err;
  }
 }
 return 0;
}
