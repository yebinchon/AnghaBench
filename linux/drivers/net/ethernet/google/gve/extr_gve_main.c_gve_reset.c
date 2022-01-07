
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gve_priv {int dev; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_info (int *,char*) ;
 int gve_clear_do_reset (struct gve_priv*) ;
 int gve_clear_reset_in_progress (struct gve_priv*) ;
 int gve_close (int ) ;
 int gve_reset_and_teardown (struct gve_priv*,int) ;
 int gve_reset_recovery (struct gve_priv*,int) ;
 int gve_set_reset_in_progress (struct gve_priv*) ;
 int gve_teardown_priv_resources (struct gve_priv*) ;
 int gve_turndown (struct gve_priv*) ;
 int netif_carrier_ok (int ) ;

int gve_reset(struct gve_priv *priv, bool attempt_teardown)
{
 bool was_up = netif_carrier_ok(priv->dev);
 int err;

 dev_info(&priv->pdev->dev, "Performing reset\n");
 gve_clear_do_reset(priv);
 gve_set_reset_in_progress(priv);



 if (!attempt_teardown) {
  gve_turndown(priv);
  gve_reset_and_teardown(priv, was_up);
 } else {

  if (was_up) {
   err = gve_close(priv->dev);

   if (err)
    gve_reset_and_teardown(priv, was_up);
  }

  gve_teardown_priv_resources(priv);
 }


 err = gve_reset_recovery(priv, was_up);
 gve_clear_reset_in_progress(priv);
 return err;
}
