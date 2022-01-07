
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct fmr2 {int dummy; } ;


 int PT_CK ;
 int PT_DATA ;
 int PT_ST ;
 int TC9154A_ATT_MAJ (int) ;
 int TC9154A_ATT_MIN (int) ;
 int tc9154a_set_pins (struct fmr2*,int) ;
 int udelay (int) ;

__attribute__((used)) static void tc9154a_set_attenuation(struct fmr2 *fmr2, int att, u32 channel)
{
 int i;
 u32 reg;
 u8 bit;

 reg = TC9154A_ATT_MAJ(att / 10) | TC9154A_ATT_MIN((att % 10) / 2);
 reg |= channel;

 for (i = 0; i < 18; i++) {
  bit = reg & (1 << i) ? PT_DATA : 0;
  tc9154a_set_pins(fmr2, bit);
  udelay(5);
  tc9154a_set_pins(fmr2, bit | PT_CK);
  udelay(5);
  tc9154a_set_pins(fmr2, bit);
 }


 udelay(5);
 tc9154a_set_pins(fmr2, PT_ST);
 udelay(5);
 tc9154a_set_pins(fmr2, 0);
}
