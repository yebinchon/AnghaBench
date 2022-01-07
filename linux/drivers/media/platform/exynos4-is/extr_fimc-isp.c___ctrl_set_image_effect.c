
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fimc_is {int dummy; } ;


 int ARRAY_SIZE (int const**) ;
 int EINVAL ;
 int __is_set_isp_effect (struct fimc_is*,int const) ;

__attribute__((used)) static int __ctrl_set_image_effect(struct fimc_is *is, int value)
{
 static const u8 effects[][2] = {
  { 129, 136 },
  { 131, 135 },
  { 128, 132 },
  { 130, 133 },
  { 16 , 134 },
 };
 int i;

 for (i = 0; i < ARRAY_SIZE(effects); i++) {
  if (effects[i][0] != value)
   continue;

  __is_set_isp_effect(is, effects[i][1]);
  return 0;
 }

 return -EINVAL;
}
