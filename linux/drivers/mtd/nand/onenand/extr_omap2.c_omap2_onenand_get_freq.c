
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

__attribute__((used)) static int omap2_onenand_get_freq(int ver)
{
 switch ((ver >> 4) & 0xf) {
 case 0:
  return 40;
 case 1:
  return 54;
 case 2:
  return 66;
 case 3:
  return 83;
 case 4:
  return 104;
 }

 return -EINVAL;
}
