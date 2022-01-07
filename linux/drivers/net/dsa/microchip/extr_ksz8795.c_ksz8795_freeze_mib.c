
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_device {int dummy; } ;


 int BIT (int) ;
 int REG_SW_CTRL_6 ;
 int SW_MIB_COUNTER_FREEZE ;
 int ksz_cfg (struct ksz_device*,int ,int ,int) ;

__attribute__((used)) static void ksz8795_freeze_mib(struct ksz_device *dev, int port, bool freeze)
{

 if (freeze)
  ksz_cfg(dev, REG_SW_CTRL_6, BIT(port), 1);
 ksz_cfg(dev, REG_SW_CTRL_6, SW_MIB_COUNTER_FREEZE, freeze);


 if (!freeze)
  ksz_cfg(dev, REG_SW_CTRL_6, BIT(port), 0);
}
