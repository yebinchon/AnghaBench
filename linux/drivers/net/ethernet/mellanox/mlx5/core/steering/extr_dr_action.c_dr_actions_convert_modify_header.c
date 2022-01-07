
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct mlx5dr_domain {int dummy; } ;
struct dr_action_modify_field_conv {int l3_type; int l4_type; scalar_t__ hw_field; } ;
typedef int __be64 ;


 int EINVAL ;
 scalar_t__ MLX5DR_ACTION_MDFY_HW_FLD_RESERVED ;
 int MLX5DR_ACTION_MDFY_HW_HDR_L3_NONE ;
 int MLX5DR_ACTION_MDFY_HW_HDR_L4_NONE ;
 int dr_action_modify_check_field_limitation (struct mlx5dr_domain*,int *) ;
 int dr_action_modify_check_is_ttl_modify (int *) ;
 int dr_action_modify_sw_to_hw (struct mlx5dr_domain*,int *,int *,struct dr_action_modify_field_conv const**) ;
 int mlx5dr_dbg (struct mlx5dr_domain*,char*) ;

__attribute__((used)) static int dr_actions_convert_modify_header(struct mlx5dr_domain *dmn,
         u32 max_hw_actions,
         u32 num_sw_actions,
         __be64 sw_actions[],
         __be64 hw_actions[],
         u32 *num_hw_actions,
         bool *modify_ttl)
{
 const struct dr_action_modify_field_conv *hw_action_info;
 u16 hw_field = MLX5DR_ACTION_MDFY_HW_FLD_RESERVED;
 u32 l3_type = MLX5DR_ACTION_MDFY_HW_HDR_L3_NONE;
 u32 l4_type = MLX5DR_ACTION_MDFY_HW_HDR_L4_NONE;
 int ret, i, hw_idx = 0;
 __be64 *sw_action;
 __be64 hw_action;

 *modify_ttl = 0;

 for (i = 0; i < num_sw_actions; i++) {
  sw_action = &sw_actions[i];

  ret = dr_action_modify_check_field_limitation(dmn, sw_action);
  if (ret)
   return ret;

  if (!(*modify_ttl))
   *modify_ttl = dr_action_modify_check_is_ttl_modify(sw_action);


  ret = dr_action_modify_sw_to_hw(dmn,
      sw_action,
      &hw_action,
      &hw_action_info);
  if (ret)
   return ret;


  if (l3_type && hw_action_info->l3_type &&
      hw_action_info->l3_type != l3_type) {
   mlx5dr_dbg(dmn, "Action list can't support two different L3 types\n");
   return -EINVAL;
  }
  if (hw_action_info->l3_type)
   l3_type = hw_action_info->l3_type;


  if (l4_type && hw_action_info->l4_type &&
      hw_action_info->l4_type != l4_type) {
   mlx5dr_dbg(dmn, "Action list can't support two different L4 types\n");
   return -EINVAL;
  }
  if (hw_action_info->l4_type)
   l4_type = hw_action_info->l4_type;




  if ((hw_idx % 2) && hw_field == hw_action_info->hw_field) {



   hw_idx++;
   if ((num_sw_actions + hw_idx - i) >= max_hw_actions) {
    mlx5dr_dbg(dmn, "Modify header action number exceeds HW limit\n");
    return -EINVAL;
   }
  }
  hw_field = hw_action_info->hw_field;

  hw_actions[hw_idx] = hw_action;
  hw_idx++;
 }

 *num_hw_actions = hw_idx;

 return 0;
}
