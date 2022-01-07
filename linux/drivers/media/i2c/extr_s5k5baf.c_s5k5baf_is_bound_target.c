
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ V4L2_SEL_TGT_COMPOSE_BOUNDS ;
 scalar_t__ V4L2_SEL_TGT_CROP_BOUNDS ;

__attribute__((used)) static int s5k5baf_is_bound_target(u32 target)
{
 return target == V4L2_SEL_TGT_CROP_BOUNDS ||
  target == V4L2_SEL_TGT_COMPOSE_BOUNDS;
}
