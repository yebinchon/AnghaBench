
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kempld_platform_data {int (* release_hardware_mutex ) (struct kempld_device_data*) ;} ;
struct kempld_device_data {int lock; int dev; } ;


 struct kempld_platform_data* dev_get_platdata (int ) ;
 int mutex_unlock (int *) ;
 int stub1 (struct kempld_device_data*) ;

void kempld_release_mutex(struct kempld_device_data *pld)
{
 const struct kempld_platform_data *pdata = dev_get_platdata(pld->dev);

 pdata->release_hardware_mutex(pld);
 mutex_unlock(&pld->lock);
}
