
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int s16 ;



__attribute__((used)) static u16 calc_mt9v011_gain(s16 lineargain)
{

 u16 digitalgain = 0;
 u16 analogmult = 0;
 u16 analoginit = 0;

 if (lineargain < 0)
  lineargain = 0;


 lineargain += 0x0020;

 if (lineargain > 2047)
  lineargain = 2047;

 if (lineargain > 1023) {
  digitalgain = 3;
  analogmult = 3;
  analoginit = lineargain / 16;
 } else if (lineargain > 511) {
  digitalgain = 1;
  analogmult = 3;
  analoginit = lineargain / 8;
 } else if (lineargain > 255) {
  analogmult = 3;
  analoginit = lineargain / 4;
 } else if (lineargain > 127) {
  analogmult = 1;
  analoginit = lineargain / 2;
 } else
  analoginit = lineargain;

 return analoginit + (analogmult << 7) + (digitalgain << 9);

}
