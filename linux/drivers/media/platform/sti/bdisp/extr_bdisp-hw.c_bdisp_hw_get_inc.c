
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int EINVAL ;

__attribute__((used)) static int bdisp_hw_get_inc(u32 from, u32 to, u16 *inc)
{
 u32 tmp;

 if (!to)
  return -EINVAL;

 if (to == from) {
  *inc = 1 << 10;
  return 0;
 }

 tmp = (from << 10) / to;
 if ((tmp > 0xFFFF) || (!tmp))

  return -EINVAL;

 *inc = (u16)tmp;

 return 0;
}
