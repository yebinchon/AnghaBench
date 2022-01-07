
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct em28xx {int dummy; } ;
typedef int __le16 ;


 int EM28XX_R40_AC97LSB ;
 int EM28XX_R42_AC97ADDR ;
 int cpu_to_le16 (int ) ;
 int em28xx_is_ac97_ready (struct em28xx*) ;
 int em28xx_write_regs (struct em28xx*,int ,int*,int) ;

int em28xx_write_ac97(struct em28xx *dev, u8 reg, u16 val)
{
 int ret;
 u8 addr = reg & 0x7f;
 __le16 value;

 value = cpu_to_le16(val);

 ret = em28xx_is_ac97_ready(dev);
 if (ret < 0)
  return ret;

 ret = em28xx_write_regs(dev, EM28XX_R40_AC97LSB, (u8 *)&value, 2);
 if (ret < 0)
  return ret;

 ret = em28xx_write_regs(dev, EM28XX_R42_AC97ADDR, &addr, 1);
 if (ret < 0)
  return ret;

 return 0;
}
