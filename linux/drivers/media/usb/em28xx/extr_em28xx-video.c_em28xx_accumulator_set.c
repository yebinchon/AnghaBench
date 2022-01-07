
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct em28xx {int dummy; } ;


 int EM28XX_R28_XMIN ;
 int EM28XX_R29_XMAX ;
 int EM28XX_R2A_YMIN ;
 int EM28XX_R2B_YMAX ;
 int em28xx_videodbg (char*,int ,int ,int ,int ) ;
 int em28xx_write_regs (struct em28xx*,int ,int *,int) ;

__attribute__((used)) static int em28xx_accumulator_set(struct em28xx *dev, u8 xmin, u8 xmax,
      u8 ymin, u8 ymax)
{
 em28xx_videodbg("em28xx Scale: (%d,%d)-(%d,%d)\n",
   xmin, ymin, xmax, ymax);

 em28xx_write_regs(dev, EM28XX_R28_XMIN, &xmin, 1);
 em28xx_write_regs(dev, EM28XX_R29_XMAX, &xmax, 1);
 em28xx_write_regs(dev, EM28XX_R2A_YMIN, &ymin, 1);
 return em28xx_write_regs(dev, EM28XX_R2B_YMAX, &ymax, 1);
}
