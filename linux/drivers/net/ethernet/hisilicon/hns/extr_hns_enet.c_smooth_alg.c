
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;



__attribute__((used)) static u32 smooth_alg(u32 new_param, u32 old_param)
{
 u32 gap = (new_param > old_param) ? new_param - old_param
       : old_param - new_param;

 if (gap > 8)
  gap >>= 3;

 if (new_param > old_param)
  return old_param + gap;
 else
  return old_param - gap;
}
