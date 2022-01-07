
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum selection_rect { ____Placeholder_selection_rect } selection_rect ;


 int R_CIS ;
 int R_COMPOSE ;
 int R_CROP_SINK ;
 int R_CROP_SOURCE ;
 int R_INVALID ;





__attribute__((used)) static enum selection_rect s5k5baf_get_sel_rect(u32 pad, u32 target)
{
 switch (target) {
 case 128:
  return pad ? R_COMPOSE : R_CIS;
 case 129:
  return pad ? R_CROP_SOURCE : R_CROP_SINK;
 case 130:
  return pad ? R_INVALID : R_CROP_SINK;
 case 131:
  return pad ? R_INVALID : R_COMPOSE;
 default:
  return R_INVALID;
 }
}
