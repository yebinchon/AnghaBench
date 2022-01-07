
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfe_device {int power_count; int power_lock; int id; TYPE_1__* camss; int clock; int nclocks; scalar_t__ was_streaming; } ;
struct TYPE_2__ {int dev; } ;


 int camss_disable_clocks (int ,int ) ;
 int camss_pm_domain_off (TYPE_1__*,int ) ;
 int dev_err (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_put_sync (int ) ;
 int vfe_halt (struct vfe_device*) ;

__attribute__((used)) static void vfe_put(struct vfe_device *vfe)
{
 mutex_lock(&vfe->power_lock);

 if (vfe->power_count == 0) {
  dev_err(vfe->camss->dev, "vfe power off on power_count == 0\n");
  goto exit;
 } else if (vfe->power_count == 1) {
  if (vfe->was_streaming) {
   vfe->was_streaming = 0;
   vfe_halt(vfe);
  }
  camss_disable_clocks(vfe->nclocks, vfe->clock);
  pm_runtime_put_sync(vfe->camss->dev);
  camss_pm_domain_off(vfe->camss, vfe->id);
 }

 vfe->power_count--;

exit:
 mutex_unlock(&vfe->power_lock);
}
