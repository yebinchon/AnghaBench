
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ S5K5BAF_WIN_WIDTH_MIN ;

__attribute__((used)) static void s5k5baf_bound_range(u32 *start, u32 *len, u32 max)
{
 if (*len > max)
  *len = max;
 if (*start + *len > max)
  *start = max - *len;
 *start &= ~1;
 *len &= ~1;
 if (*len < S5K5BAF_WIN_WIDTH_MIN)
  *len = S5K5BAF_WIN_WIDTH_MIN;
}
