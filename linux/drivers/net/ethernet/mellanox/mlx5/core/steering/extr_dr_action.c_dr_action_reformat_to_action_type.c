
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mlx5dr_action_type { ____Placeholder_mlx5dr_action_type } mlx5dr_action_type ;
typedef enum mlx5dr_action_reformat_type { ____Placeholder_mlx5dr_action_reformat_type } mlx5dr_action_reformat_type ;






 int DR_ACTION_TYP_L2_TO_TNL_L2 ;
 int DR_ACTION_TYP_L2_TO_TNL_L3 ;
 int DR_ACTION_TYP_TNL_L2_TO_L2 ;
 int DR_ACTION_TYP_TNL_L3_TO_L2 ;
 int EINVAL ;

__attribute__((used)) static int
dr_action_reformat_to_action_type(enum mlx5dr_action_reformat_type reformat_type,
      enum mlx5dr_action_type *action_type)
{
 switch (reformat_type) {
 case 129:
  *action_type = DR_ACTION_TYP_TNL_L2_TO_L2;
  break;
 case 131:
  *action_type = DR_ACTION_TYP_L2_TO_TNL_L2;
  break;
 case 128:
  *action_type = DR_ACTION_TYP_TNL_L3_TO_L2;
  break;
 case 130:
  *action_type = DR_ACTION_TYP_L2_TO_TNL_L3;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
