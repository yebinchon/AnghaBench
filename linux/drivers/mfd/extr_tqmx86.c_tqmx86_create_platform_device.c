
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dmi_system_id {int dummy; } ;


 int ENOMEM ;
 int platform_device_add (struct platform_device*) ;
 struct platform_device* platform_device_alloc (char*,int) ;
 int platform_device_put (struct platform_device*) ;

__attribute__((used)) static int tqmx86_create_platform_device(const struct dmi_system_id *id)
{
 struct platform_device *pdev;
 int err;

 pdev = platform_device_alloc("tqmx86", -1);
 if (!pdev)
  return -ENOMEM;

 err = platform_device_add(pdev);
 if (err)
  platform_device_put(pdev);

 return err;
}
