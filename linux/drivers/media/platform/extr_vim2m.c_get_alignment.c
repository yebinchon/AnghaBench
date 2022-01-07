
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int BAYER_HEIGHT_ALIGN ;
 unsigned int BAYER_WIDTH_ALIGN ;
 unsigned int HEIGHT_ALIGN ;




 unsigned int WIDTH_ALIGN ;

__attribute__((used)) static void get_alignment(u32 fourcc,
     unsigned int *walign, unsigned int *halign)
{
 switch (fourcc) {
 case 131:
 case 130:
 case 129:
 case 128:
  *walign = BAYER_WIDTH_ALIGN;
  *halign = BAYER_HEIGHT_ALIGN;
  return;
 default:
  *walign = WIDTH_ALIGN;
  *halign = HEIGHT_ALIGN;
  return;
 }
}
