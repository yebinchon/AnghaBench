
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct bcm7xxx_regs TYPE_1__ ;


typedef int u16 ;
struct phy_device {int dummy; } ;
struct bcm7xxx_regs {int reg; int value; } ;


 unsigned int ARRAY_SIZE (TYPE_1__ const*) ;



 int phy_write (struct phy_device*,int,int ) ;

__attribute__((used)) static int bcm7xxx_suspend(struct phy_device *phydev)
{
 int ret;
 static const struct bcm7xxx_regs {
  int reg;
  u16 value;
 } bcm7xxx_suspend_cfg[] = {
  { 128, 0x008b },
  { 130, 0x01c0 },
  { 129, 0x7000 },
  { 128, 0x000f },
  { 130, 0x20d0 },
  { 128, 0x000b },
 };
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(bcm7xxx_suspend_cfg); i++) {
  ret = phy_write(phydev,
    bcm7xxx_suspend_cfg[i].reg,
    bcm7xxx_suspend_cfg[i].value);
  if (ret)
   return ret;
 }

 return 0;
}
