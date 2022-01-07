
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MLX5_FLOW_TABLE_TERMINATION ;

__attribute__((used)) static bool mlx5_dr_is_fw_table(u32 flags)
{
 if (flags & MLX5_FLOW_TABLE_TERMINATION)
  return 1;

 return 0;
}
