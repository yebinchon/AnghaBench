
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gve_priv {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,int) ;
 int gve_adminq_deconfigure_device_resources (struct gve_priv*) ;
 int gve_clear_device_resources_ok (struct gve_priv*) ;
 int gve_free_counter_array (struct gve_priv*) ;
 int gve_free_notify_blocks (struct gve_priv*) ;
 scalar_t__ gve_get_device_resources_ok (struct gve_priv*) ;
 int gve_trigger_reset (struct gve_priv*) ;

__attribute__((used)) static void gve_teardown_device_resources(struct gve_priv *priv)
{
 int err;


 if (gve_get_device_resources_ok(priv)) {
  err = gve_adminq_deconfigure_device_resources(priv);
  if (err) {
   dev_err(&priv->pdev->dev,
    "Could not deconfigure device resources: err=%d\n",
    err);
   gve_trigger_reset(priv);
  }
 }
 gve_free_counter_array(priv);
 gve_free_notify_blocks(priv);
 gve_clear_device_resources_ok(priv);
}
