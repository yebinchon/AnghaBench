
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s16 ;



__attribute__((used)) static s16
ath5k_get_interpolated_value(s16 target, s16 x_left, s16 x_right,
     s16 y_left, s16 y_right)
{
 s16 ratio, result;



 if ((x_left == x_right) || (y_left == y_right))
  return y_left;







 ratio = ((100 * y_right - 100 * y_left) / (x_right - x_left));


 result = y_left + (ratio * (target - x_left) / 100);

 return result;
}
