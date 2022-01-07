
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MLX5_SET (int ,int *,int ,int ) ;
 int ste_general ;

void mlx5dr_ste_set_entry_type(u8 *hw_ste_p, u8 entry_type)
{
 MLX5_SET(ste_general, hw_ste_p, entry_type, entry_type);
}
