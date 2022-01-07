
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef void* u16 ;
struct mlx5dr_domain {int dummy; } ;
struct dr_action_modify_field_conv {int end; int start; int hw_field; } ;
typedef int __be64 ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int MLX5DR_ACTION_MDFY_HW_OP_ADD ;
 int MLX5DR_ACTION_MDFY_HW_OP_SET ;


 void* MLX5_GET (int ,int *,int) ;
 int MLX5_SET (int ,int *,int ,int) ;
 int action_type ;
 int destination_field_code ;
 int destination_left_shifter ;
 int destination_length ;
 int dr_action_hw_set ;
 struct dr_action_modify_field_conv* dr_action_modify_get_hw_info (void*) ;
 int field ;
 int inline_data ;
 int mlx5dr_dbg (struct mlx5dr_domain*,char*) ;
 int mlx5dr_info (struct mlx5dr_domain*,char*) ;
 int opcode ;
 int set_action_in ;

__attribute__((used)) static int
dr_action_modify_sw_to_hw(struct mlx5dr_domain *dmn,
     __be64 *sw_action,
     __be64 *hw_action,
     const struct dr_action_modify_field_conv **ret_hw_info)
{
 const struct dr_action_modify_field_conv *hw_action_info;
 u8 offset, length, max_length, action;
 u16 sw_field;
 u8 hw_opcode;
 u32 data;


 action = MLX5_GET(set_action_in, sw_action, action_type);
 length = MLX5_GET(set_action_in, sw_action, length);
 offset = MLX5_GET(set_action_in, sw_action, offset);
 sw_field = MLX5_GET(set_action_in, sw_action, field);
 data = MLX5_GET(set_action_in, sw_action, data);


 hw_action_info = dr_action_modify_get_hw_info(sw_field);
 if (!hw_action_info) {
  mlx5dr_dbg(dmn, "Modify action invalid field given\n");
  return -EINVAL;
 }

 max_length = hw_action_info->end - hw_action_info->start + 1;

 switch (action) {
 case 128:
  hw_opcode = MLX5DR_ACTION_MDFY_HW_OP_SET;

  if (!length)
   length = 32;

  if (length + offset > max_length) {
   mlx5dr_dbg(dmn, "Modify action length + offset exceeds limit\n");
   return -EINVAL;
  }
  break;

 case 129:
  hw_opcode = MLX5DR_ACTION_MDFY_HW_OP_ADD;
  offset = 0;
  length = max_length;
  break;

 default:
  mlx5dr_info(dmn, "Unsupported action_type for modify action\n");
  return -EOPNOTSUPP;
 }

 MLX5_SET(dr_action_hw_set, hw_action, opcode, hw_opcode);

 MLX5_SET(dr_action_hw_set, hw_action, destination_field_code,
   hw_action_info->hw_field);

 MLX5_SET(dr_action_hw_set, hw_action, destination_left_shifter,
   hw_action_info->start + offset);

 MLX5_SET(dr_action_hw_set, hw_action, destination_length,
   length == 32 ? 0 : length);

 MLX5_SET(dr_action_hw_set, hw_action, inline_data, data);

 *ret_hw_info = hw_action_info;

 return 0;
}
