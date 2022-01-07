
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct bgmac {int dev; } ;


 int bgmac_read (struct bgmac*,int ) ;
 int dev_err (int ,char*,int ) ;
 int udelay (int) ;

__attribute__((used)) static bool bgmac_wait_value(struct bgmac *bgmac, u16 reg, u32 mask,
        u32 value, int timeout)
{
 u32 val;
 int i;

 for (i = 0; i < timeout / 10; i++) {
  val = bgmac_read(bgmac, reg);
  if ((val & mask) == value)
   return 1;
  udelay(10);
 }
 dev_err(bgmac->dev, "Timeout waiting for reg 0x%X\n", reg);
 return 0;
}
