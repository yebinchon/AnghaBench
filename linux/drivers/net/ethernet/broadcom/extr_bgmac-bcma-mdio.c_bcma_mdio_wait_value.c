
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct bcma_device {int dev; } ;


 int bcma_read32 (struct bcma_device*,int ) ;
 int dev_err (int *,char*,int ) ;
 int udelay (int) ;

__attribute__((used)) static bool bcma_mdio_wait_value(struct bcma_device *core, u16 reg, u32 mask,
     u32 value, int timeout)
{
 u32 val;
 int i;

 for (i = 0; i < timeout / 10; i++) {
  val = bcma_read32(core, reg);
  if ((val & mask) == value)
   return 1;
  udelay(10);
 }
 dev_err(&core->dev, "Timeout waiting for reg 0x%X\n", reg);
 return 0;
}
