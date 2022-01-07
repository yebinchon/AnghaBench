
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dr_hw_ste_format {int dummy; } ;


 scalar_t__ MLX5DR_STE_LU_TYPE_NOP ;
 scalar_t__ MLX5_GET (int ,struct dr_hw_ste_format*,int ) ;
 int next_lu_type ;
 int ste_general ;

bool mlx5dr_ste_is_not_valid_entry(u8 *p_hw_ste)
{
 struct dr_hw_ste_format *hw_ste = (struct dr_hw_ste_format *)p_hw_ste;

 if (MLX5_GET(ste_general, hw_ste, next_lu_type) ==
     MLX5DR_STE_LU_TYPE_NOP)
  return 1;

 return 0;
}
