
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_cfg {int dummy; } ;
typedef scalar_t__ kernel_ulong_t ;


 scalar_t__ ARRAY_SIZE (struct mei_cfg const**) ;
 int BUILD_BUG_ON (int) ;
 scalar_t__ MEI_ME_NUM_CFG ;
 struct mei_cfg const** mei_cfg_list ;

const struct mei_cfg *mei_me_get_cfg(kernel_ulong_t idx)
{
 BUILD_BUG_ON(ARRAY_SIZE(mei_cfg_list) != MEI_ME_NUM_CFG);

 if (idx >= MEI_ME_NUM_CFG)
  return ((void*)0);

 return mei_cfg_list[idx];
}
