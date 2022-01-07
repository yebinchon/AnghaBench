
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int u8 ;
struct em28xx {int (* em28xx_read_reg_req_len ) (struct em28xx*,int ,int ,int*,int) ;} ;
typedef int __le16 ;


 int EM28XX_R40_AC97LSB ;
 int EM28XX_R42_AC97ADDR ;
 int em28xx_is_ac97_ready (struct em28xx*) ;
 int em28xx_write_regs (struct em28xx*,int ,int*,int) ;
 int le16_to_cpu (int ) ;
 int stub1 (struct em28xx*,int ,int ,int*,int) ;

int em28xx_read_ac97(struct em28xx *dev, u8 reg)
{
 int ret;
 u8 addr = (reg & 0x7f) | 0x80;
 __le16 val;

 ret = em28xx_is_ac97_ready(dev);
 if (ret < 0)
  return ret;

 ret = em28xx_write_regs(dev, EM28XX_R42_AC97ADDR, &addr, 1);
 if (ret < 0)
  return ret;

 ret = dev->em28xx_read_reg_req_len(dev, 0, EM28XX_R40_AC97LSB,
        (u8 *)&val, sizeof(val));

 if (ret < 0)
  return ret;
 return le16_to_cpu(val);
}
