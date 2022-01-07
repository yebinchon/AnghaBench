
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kempld_platform_data {int ioresource; } ;
struct dmi_system_id {struct kempld_platform_data* driver_data; } ;


 int ENOMEM ;
 int kempld_pdev ;
 int platform_device_add (int ) ;
 int platform_device_add_data (int ,struct kempld_platform_data const*,int) ;
 int platform_device_add_resources (int ,int ,int) ;
 int platform_device_alloc (char*,int) ;
 int platform_device_put (int ) ;

__attribute__((used)) static int kempld_create_platform_device(const struct dmi_system_id *id)
{
 const struct kempld_platform_data *pdata = id->driver_data;
 int ret;

 kempld_pdev = platform_device_alloc("kempld", -1);
 if (!kempld_pdev)
  return -ENOMEM;

 ret = platform_device_add_data(kempld_pdev, pdata, sizeof(*pdata));
 if (ret)
  goto err;

 ret = platform_device_add_resources(kempld_pdev, pdata->ioresource, 1);
 if (ret)
  goto err;

 ret = platform_device_add(kempld_pdev);
 if (ret)
  goto err;

 return 0;
err:
 platform_device_put(kempld_pdev);
 return ret;
}
