
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MLX5_SET (int ,int *,int ,int) ;
 int go_back ;
 int ste_sx_transmit ;

void mlx5dr_ste_set_go_back_bit(u8 *hw_ste_p)
{
 MLX5_SET(ste_sx_transmit, hw_ste_p, go_back, 1);
}
