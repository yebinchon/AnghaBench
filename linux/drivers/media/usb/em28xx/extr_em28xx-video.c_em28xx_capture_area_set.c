
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct em28xx {scalar_t__ is_em25xx; } ;


 int EM28XX_R1B_OFLOW ;
 int EM28XX_R1C_HSTART ;
 int EM28XX_R1D_VSTART ;
 int EM28XX_R1E_CWIDTH ;
 int EM28XX_R1F_CHEIGHT ;
 int em28xx_videodbg (char*,int,int,int,int) ;
 int em28xx_write_reg (struct em28xx*,int,int) ;
 int em28xx_write_regs (struct em28xx*,int ,int*,int) ;

__attribute__((used)) static void em28xx_capture_area_set(struct em28xx *dev, u8 hstart, u8 vstart,
        u16 width, u16 height)
{
 u8 cwidth = width >> 2;
 u8 cheight = height >> 2;
 u8 overflow = (height >> 9 & 0x02) | (width >> 10 & 0x01);


 em28xx_videodbg("capture area set to (%d,%d): %dx%d\n",
   hstart, vstart,
         ((overflow & 2) << 9 | cwidth << 2),
         ((overflow & 1) << 10 | cheight << 2));

 em28xx_write_regs(dev, EM28XX_R1C_HSTART, &hstart, 1);
 em28xx_write_regs(dev, EM28XX_R1D_VSTART, &vstart, 1);
 em28xx_write_regs(dev, EM28XX_R1E_CWIDTH, &cwidth, 1);
 em28xx_write_regs(dev, EM28XX_R1F_CHEIGHT, &cheight, 1);
 em28xx_write_regs(dev, EM28XX_R1B_OFLOW, &overflow, 1);



 if (dev->is_em25xx) {
  em28xx_write_reg(dev, 0x34, width >> 4);
  em28xx_write_reg(dev, 0x35, height >> 4);
 }
}
