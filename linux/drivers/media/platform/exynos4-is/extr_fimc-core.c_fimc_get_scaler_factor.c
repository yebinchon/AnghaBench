
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;

__attribute__((used)) static int fimc_get_scaler_factor(u32 src, u32 tar, u32 *ratio, u32 *shift)
{
 u32 sh = 6;

 if (src >= 64 * tar)
  return -EINVAL;

 while (sh--) {
  u32 tmp = 1 << sh;
  if (src >= tar * tmp) {
   *shift = sh, *ratio = tmp;
   return 0;
  }
 }
 *shift = 0, *ratio = 1;
 return 0;
}
