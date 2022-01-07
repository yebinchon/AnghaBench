
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpbe_device {int dummy; } ;
struct platform_device {int dummy; } ;


 int kfree (struct vpbe_device*) ;
 struct vpbe_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int vpbe_remove(struct platform_device *device)
{
 struct vpbe_device *vpbe_dev = platform_get_drvdata(device);

 kfree(vpbe_dev);

 return 0;
}
