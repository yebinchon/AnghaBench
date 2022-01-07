
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gve_priv {TYPE_1__* pdev; int num_ntfy_blks; int ntfy_block_bus; int num_event_counters; int counter_array_bus; } ;
struct TYPE_2__ {int dev; } ;


 int ENXIO ;
 int dev_err (int *,char*,int) ;
 int gve_adminq_configure_device_resources (struct gve_priv*,int ,int ,int ,int ) ;
 int gve_alloc_counter_array (struct gve_priv*) ;
 int gve_alloc_notify_blocks (struct gve_priv*) ;
 int gve_free_counter_array (struct gve_priv*) ;
 int gve_free_notify_blocks (struct gve_priv*) ;
 int gve_set_device_resources_ok (struct gve_priv*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int gve_setup_device_resources(struct gve_priv *priv)
{
 int err;

 err = gve_alloc_counter_array(priv);
 if (err)
  return err;
 err = gve_alloc_notify_blocks(priv);
 if (err)
  goto abort_with_counter;
 err = gve_adminq_configure_device_resources(priv,
          priv->counter_array_bus,
          priv->num_event_counters,
          priv->ntfy_block_bus,
          priv->num_ntfy_blks);
 if (unlikely(err)) {
  dev_err(&priv->pdev->dev,
   "could not setup device_resources: err=%d\n", err);
  err = -ENXIO;
  goto abort_with_ntfy_blocks;
 }
 gve_set_device_resources_ok(priv);
 return 0;
abort_with_ntfy_blocks:
 gve_free_notify_blocks(priv);
abort_with_counter:
 gve_free_counter_array(priv);
 return err;
}
