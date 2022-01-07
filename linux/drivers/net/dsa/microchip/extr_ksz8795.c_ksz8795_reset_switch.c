
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_device {int dummy; } ;


 int REG_POWER_MANAGEMENT_1 ;
 int SW_POWER_MANAGEMENT_MODE_S ;
 int SW_SOFTWARE_POWER_DOWN ;
 int ksz_write8 (struct ksz_device*,int ,int) ;

__attribute__((used)) static int ksz8795_reset_switch(struct ksz_device *dev)
{

 ksz_write8(dev, REG_POWER_MANAGEMENT_1,
     SW_SOFTWARE_POWER_DOWN << SW_POWER_MANAGEMENT_MODE_S);
 ksz_write8(dev, REG_POWER_MANAGEMENT_1, 0);

 return 0;
}
