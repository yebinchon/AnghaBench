
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mlx4_dev {int dummy; } ;


 int CMD_STAT_INTERNAL_ERR ;
 int CMD_STAT_OK ;
 int mlx4_status_to_errno (int ) ;

__attribute__((used)) static int mlx4_internal_err_ret_value(struct mlx4_dev *dev, u16 op,
           u8 op_modifier)
{
 switch (op) {
 case 130:
 case 129:
 case 131:
 case 140:
 case 135:
 case 136:
 case 133:
 case 134:
 case 139:
 case 128:
 case 137:
 case 138:
  return CMD_STAT_OK;

 case 132:

  if (op_modifier == 0)
   return CMD_STAT_OK;
  return mlx4_status_to_errno(CMD_STAT_INTERNAL_ERR);

 default:
  return mlx4_status_to_errno(CMD_STAT_INTERNAL_ERR);
 }
}
