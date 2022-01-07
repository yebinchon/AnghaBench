
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_fract {int member_0; int member_1; int numerator; int denominator; } ;


 int swap (int,int) ;

struct v4l2_fract v4l2_calc_aspect_ratio(u8 hor_landscape, u8 vert_portrait)
{
 struct v4l2_fract aspect = { 16, 9 };
 u8 ratio;


 if (!hor_landscape && !vert_portrait)
  return aspect;

 if (hor_landscape && vert_portrait) {
  aspect.numerator = hor_landscape;
  aspect.denominator = vert_portrait;
  return aspect;
 }


 ratio = hor_landscape | vert_portrait;

 if (ratio == 79) {
  aspect.numerator = 16;
  aspect.denominator = 9;
 } else if (ratio == 34) {
  aspect.numerator = 4;
  aspect.denominator = 3;
 } else if (ratio == 68) {
  aspect.numerator = 15;
  aspect.denominator = 9;
 } else {
  aspect.numerator = hor_landscape + 99;
  aspect.denominator = 100;
 }
 if (hor_landscape)
  return aspect;

 swap(aspect.denominator, aspect.numerator);
 return aspect;
}
