
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vfe_device {scalar_t__ power_count; int power_lock; int id; TYPE_1__* camss; int clock; int nclocks; } ;
struct TYPE_3__ {int dev; } ;


 int camss_disable_clocks (int ,int ) ;
 int camss_enable_clocks (int ,int ,int ) ;
 int camss_pm_domain_off (TYPE_1__*,int ) ;
 int camss_pm_domain_on (TYPE_1__*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int vfe_check_clock_rates (struct vfe_device*) ;
 int vfe_init_outputs (struct vfe_device*) ;
 int vfe_reset (struct vfe_device*) ;
 int vfe_reset_output_maps (struct vfe_device*) ;
 int vfe_set_clock_rates (struct vfe_device*) ;

__attribute__((used)) static int vfe_get(struct vfe_device *vfe)
{
 int ret;

 mutex_lock(&vfe->power_lock);

 if (vfe->power_count == 0) {
  ret = camss_pm_domain_on(vfe->camss, vfe->id);
  if (ret < 0)
   goto error_pm_domain;

  ret = pm_runtime_get_sync(vfe->camss->dev);
  if (ret < 0)
   goto error_pm_runtime_get;

  ret = vfe_set_clock_rates(vfe);
  if (ret < 0)
   goto error_clocks;

  ret = camss_enable_clocks(vfe->nclocks, vfe->clock,
       vfe->camss->dev);
  if (ret < 0)
   goto error_clocks;

  ret = vfe_reset(vfe);
  if (ret < 0)
   goto error_reset;

  vfe_reset_output_maps(vfe);

  vfe_init_outputs(vfe);
 } else {
  ret = vfe_check_clock_rates(vfe);
  if (ret < 0)
   goto error_clocks;
 }
 vfe->power_count++;

 mutex_unlock(&vfe->power_lock);

 return 0;

error_reset:
 camss_disable_clocks(vfe->nclocks, vfe->clock);

error_clocks:
 pm_runtime_put_sync(vfe->camss->dev);

error_pm_runtime_get:
 camss_pm_domain_off(vfe->camss, vfe->id);

error_pm_domain:
 mutex_unlock(&vfe->power_lock);

 return ret;
}
