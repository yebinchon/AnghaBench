
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct dr_action_modify_field_conv {int start; int end; } ;


 size_t ARRAY_SIZE (struct dr_action_modify_field_conv*) ;
 struct dr_action_modify_field_conv* dr_action_conv_arr ;

__attribute__((used)) static const struct dr_action_modify_field_conv *
dr_action_modify_get_hw_info(u16 sw_field)
{
 const struct dr_action_modify_field_conv *hw_action_info;

 if (sw_field >= ARRAY_SIZE(dr_action_conv_arr))
  goto not_found;

 hw_action_info = &dr_action_conv_arr[sw_field];
 if (!hw_action_info->end && !hw_action_info->start)
  goto not_found;

 return hw_action_info;

not_found:
 return ((void*)0);
}
