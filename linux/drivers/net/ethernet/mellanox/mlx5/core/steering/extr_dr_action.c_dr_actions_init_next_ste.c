
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
typedef enum mlx5dr_ste_entry_type { ____Placeholder_mlx5dr_ste_entry_type } mlx5dr_ste_entry_type ;


 int DR_STE_SIZE ;
 int MLX5DR_STE_LU_TYPE_DONT_CARE ;
 int mlx5dr_ste_init (int *,int ,int,int ) ;

__attribute__((used)) static void dr_actions_init_next_ste(u8 **last_ste,
         u32 *added_stes,
         enum mlx5dr_ste_entry_type entry_type,
         u16 gvmi)
{
 (*added_stes)++;
 *last_ste += DR_STE_SIZE;
 mlx5dr_ste_init(*last_ste, MLX5DR_STE_LU_TYPE_DONT_CARE, entry_type, gvmi);
}
