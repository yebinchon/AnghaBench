
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct mlxsw_reg_info {scalar_t__ id; char const* name; } ;


 int ARRAY_SIZE (struct mlxsw_reg_info**) ;
 struct mlxsw_reg_info** mlxsw_reg_infos ;

__attribute__((used)) static inline const char *mlxsw_reg_id_str(u16 reg_id)
{
 const struct mlxsw_reg_info *reg_info;
 int i;

 for (i = 0; i < ARRAY_SIZE(mlxsw_reg_infos); i++) {
  reg_info = mlxsw_reg_infos[i];
  if (reg_info->id == reg_id)
   return reg_info->name;
 }
 return "*UNKNOWN*";
}
