
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CALC_WORD (int,int,int) ;
__attribute__((used)) static int vfe_word_per_line_by_pixel(u32 format, u32 pixel_per_line)
{
 int val = 0;

 switch (format) {
 case 135:
 case 133:
 case 134:
 case 132:
  val = CALC_WORD(pixel_per_line, 1, 8);
  break;
 case 129:
 case 128:
 case 131:
 case 130:
  val = CALC_WORD(pixel_per_line, 2, 8);
  break;
 }

 return val;
}
