
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int MLX5_SET (int ,int *,int ,int ) ;
 int header_re_write_actions_pointer ;
 int number_of_re_write_actions ;
 int ste_modify_packet ;

void mlx5dr_ste_set_rewrite_actions(u8 *hw_ste_p, u16 num_of_actions,
        u32 re_write_index)
{
 MLX5_SET(ste_modify_packet, hw_ste_p, number_of_re_write_actions,
   num_of_actions);
 MLX5_SET(ste_modify_packet, hw_ste_p, header_re_write_actions_pointer,
   re_write_index);
}
