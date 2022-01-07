
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ V4L2_SEL_TGT_CROP ;
 scalar_t__ V4L2_SEL_TGT_CROP_BOUNDS ;
 scalar_t__ V4L2_SEL_TGT_CROP_DEFAULT ;

__attribute__((used)) static inline bool mtk_mdp_is_target_crop(u32 target)
{
 if (target == V4L2_SEL_TGT_CROP_DEFAULT
     || target == V4L2_SEL_TGT_CROP_BOUNDS
     || target == V4L2_SEL_TGT_CROP)
  return 1;
 return 0;
}
