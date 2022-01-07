
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct gve_priv {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int GVE_DEVICE_STATUS_RESET_MASK ;
 int dev_info (int *,char*) ;
 int gve_set_do_reset (struct gve_priv*) ;

__attribute__((used)) static void gve_handle_status(struct gve_priv *priv, u32 status)
{
 if (GVE_DEVICE_STATUS_RESET_MASK & status) {
  dev_info(&priv->pdev->dev, "Device requested reset.\n");
  gve_set_do_reset(priv);
 }
}
