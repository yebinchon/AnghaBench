
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ov9640_reg_alt {int com13; int com15; void* com7; int com12; } ;





 int OV9640_COM12_YUV_AVG ;
 void* OV9640_COM13_RGB_AVG ;
 int OV9640_COM13_YUV_DLY (int) ;
 int OV9640_COM13_Y_DELAY_EN ;
 int OV9640_COM15_RGB_555 ;
 int OV9640_COM15_RGB_565 ;
 void* OV9640_COM7_RGB ;

__attribute__((used)) static void ov9640_alter_regs(u32 code,
         struct ov9640_reg_alt *alt)
{
 switch (code) {
 default:
 case 128:
  alt->com12 = OV9640_COM12_YUV_AVG;
  alt->com13 = OV9640_COM13_Y_DELAY_EN |
     OV9640_COM13_YUV_DLY(0x01);
  break;
 case 130:
  alt->com7 = OV9640_COM7_RGB;
  alt->com13 = OV9640_COM13_RGB_AVG;
  alt->com15 = OV9640_COM15_RGB_555;
  break;
 case 129:
  alt->com7 = OV9640_COM7_RGB;
  alt->com13 = OV9640_COM13_RGB_AVG;
  alt->com15 = OV9640_COM15_RGB_565;
  break;
 }
}
