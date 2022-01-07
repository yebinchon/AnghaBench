
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int MLX5_SET (int ,int *,int ,int) ;
 int miss_address_31_6 ;
 int miss_address_39_32 ;
 int ste_rx_steering_mult ;

void mlx5dr_ste_set_miss_addr(u8 *hw_ste_p, u64 miss_addr)
{
 u64 index = miss_addr >> 6;


 MLX5_SET(ste_rx_steering_mult, hw_ste_p, miss_address_39_32, index >> 26);
 MLX5_SET(ste_rx_steering_mult, hw_ste_p, miss_address_31_6, index);
}
