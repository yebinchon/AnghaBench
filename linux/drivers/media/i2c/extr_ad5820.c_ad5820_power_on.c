
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad5820_device {int standby; int vana; } ;


 int ad5820_update_hw (struct ad5820_device*) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int ad5820_power_on(struct ad5820_device *coil, bool restore)
{
 int ret;

 ret = regulator_enable(coil->vana);
 if (ret < 0)
  return ret;

 if (restore) {

  coil->standby = 0;
  ret = ad5820_update_hw(coil);
  if (ret)
   goto fail;
 }
 return 0;

fail:
 coil->standby = 1;
 regulator_disable(coil->vana);

 return ret;
}
