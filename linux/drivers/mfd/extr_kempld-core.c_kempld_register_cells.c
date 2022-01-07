
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kempld_platform_data {int (* register_cells ) (struct kempld_device_data*) ;} ;
struct kempld_device_data {int dev; } ;


 struct kempld_platform_data* dev_get_platdata (int ) ;
 int stub1 (struct kempld_device_data*) ;

__attribute__((used)) static int kempld_register_cells(struct kempld_device_data *pld)
{
 const struct kempld_platform_data *pdata = dev_get_platdata(pld->dev);

 return pdata->register_cells(pld);
}
