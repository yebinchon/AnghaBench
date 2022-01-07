
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static void find_aspect_ratio(u32 width, u32 height,
          u32 *num, u32 *denom)
{
 if (!(height % 3) && ((height * 4 / 3) == width)) {
  *num = 4;
  *denom = 3;
 } else if (!(height % 9) && ((height * 16 / 9) == width)) {
  *num = 16;
  *denom = 9;
 } else if (!(height % 10) && ((height * 16 / 10) == width)) {
  *num = 16;
  *denom = 10;
 } else if (!(height % 4) && ((height * 5 / 4) == width)) {
  *num = 5;
  *denom = 4;
 } else if (!(height % 9) && ((height * 15 / 9) == width)) {
  *num = 15;
  *denom = 9;
 } else {
  *num = 16;
  *denom = 9;
 }
}
