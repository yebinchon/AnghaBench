
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ carl9170_interpolate_u8 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static u8 carl9170_interpolate_val(u8 x, u8 *x_array, u8 *y_array)
{
 int i;

 for (i = 0; i < 3; i++) {
  if (x <= x_array[i + 1])
   break;
 }

 return carl9170_interpolate_u8(x, x_array[i], y_array[i],
  x_array[i + 1], y_array[i + 1]);
}
