
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stk1160 {int dummy; } ;


 scalar_t__ STK1160_AC97CTL_0 ;
 scalar_t__ STK1160_AC97CTL_1 ;
 int stk1160_ac97_dump_regs (struct stk1160*) ;
 int stk1160_has_ac97 (struct stk1160*) ;
 int stk1160_has_audio (struct stk1160*) ;
 int stk1160_info (char*) ;
 int stk1160_write_ac97 (struct stk1160*,int,int) ;
 int stk1160_write_reg (struct stk1160*,scalar_t__,int) ;

void stk1160_ac97_setup(struct stk1160 *dev)
{
 if (!stk1160_has_audio(dev)) {
  stk1160_info("Device doesn't support audio, skipping AC97 setup.");
  return;
 }

 if (!stk1160_has_ac97(dev)) {
  stk1160_info("Device uses internal 8-bit ADC, skipping AC97 setup.");
  return;
 }


 stk1160_write_reg(dev, STK1160_AC97CTL_0, 0x94);
 stk1160_write_reg(dev, STK1160_AC97CTL_0, 0x8c);


 stk1160_write_reg(dev, STK1160_AC97CTL_1 + 2, 0x01);
 stk1160_write_reg(dev, STK1160_AC97CTL_1 + 3, 0x00);


 stk1160_write_ac97(dev, 0x12, 0x8808);
 stk1160_write_ac97(dev, 0x10, 0x0808);
 stk1160_write_ac97(dev, 0x0e, 0x0008);
 stk1160_write_ac97(dev, 0x16, 0x0808);
 stk1160_write_ac97(dev, 0x1a, 0x0404);
 stk1160_write_ac97(dev, 0x02, 0x0000);
 stk1160_write_ac97(dev, 0x1c, 0x0808);




}
