
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MLX5_GET (int ,int *,int ) ;
 int entry_type ;
 int ste_general ;

u8 mlx5dr_ste_get_entry_type(u8 *hw_ste_p)
{
 return MLX5_GET(ste_general, hw_ste_p, entry_type);
}
