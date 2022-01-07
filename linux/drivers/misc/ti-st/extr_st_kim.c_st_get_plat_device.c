
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 struct platform_device** st_kim_devices ;

__attribute__((used)) static struct platform_device *st_get_plat_device(int id)
{
 return st_kim_devices[id];
}
