
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad5820_device {int standby; int vana; } ;


 int ad5820_update_hw (struct ad5820_device*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int ad5820_power_off(struct ad5820_device *coil, bool standby)
{
 int ret = 0, ret2;





 if (standby) {
  coil->standby = 1;
  ret = ad5820_update_hw(coil);
 }

 ret2 = regulator_disable(coil->vana);
 if (ret)
  return ret;
 return ret2;
}
