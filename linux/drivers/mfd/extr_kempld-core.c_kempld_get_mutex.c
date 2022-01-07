
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kempld_platform_data {int (* get_hardware_mutex ) (struct kempld_device_data*) ;} ;
struct kempld_device_data {int lock; int dev; } ;


 struct kempld_platform_data* dev_get_platdata (int ) ;
 int mutex_lock (int *) ;
 int stub1 (struct kempld_device_data*) ;

void kempld_get_mutex(struct kempld_device_data *pld)
{
 const struct kempld_platform_data *pdata = dev_get_platdata(pld->dev);

 mutex_lock(&pld->lock);
 pdata->get_hardware_mutex(pld);
}
