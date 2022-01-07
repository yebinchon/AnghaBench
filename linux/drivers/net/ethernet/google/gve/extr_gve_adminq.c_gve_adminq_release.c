
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gve_priv {TYPE_1__* reg_bar0; } ;
struct TYPE_2__ {int adminq_pfn; } ;


 int GVE_ADMINQ_SLEEP_LEN ;
 int GVE_MAX_ADMINQ_RELEASE_CHECK ;
 int WARN (int,char*) ;
 int gve_clear_admin_queue_ok (struct gve_priv*) ;
 int gve_clear_device_resources_ok (struct gve_priv*) ;
 int gve_clear_device_rings_ok (struct gve_priv*) ;
 scalar_t__ ioread32be (int *) ;
 int iowrite32be (int,int *) ;
 int msleep (int ) ;

void gve_adminq_release(struct gve_priv *priv)
{
 int i = 0;


 iowrite32be(0x0, &priv->reg_bar0->adminq_pfn);
 while (ioread32be(&priv->reg_bar0->adminq_pfn)) {




  if (i == GVE_MAX_ADMINQ_RELEASE_CHECK)
   WARN(1, "Unrecoverable platform error!");
  i++;
  msleep(GVE_ADMINQ_SLEEP_LEN);
 }
 gve_clear_device_rings_ok(priv);
 gve_clear_device_resources_ok(priv);
 gve_clear_admin_queue_ok(priv);
}
