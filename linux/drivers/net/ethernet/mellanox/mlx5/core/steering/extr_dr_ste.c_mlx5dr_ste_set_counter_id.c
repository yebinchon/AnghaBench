
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int MLX5_SET (int ,int *,int ,int) ;
 int counter_trigger_15_0 ;
 int counter_trigger_23_16 ;
 int ste_rx_steering_mult ;

void mlx5dr_ste_set_counter_id(u8 *hw_ste_p, u32 ctr_id)
{

 MLX5_SET(ste_rx_steering_mult, hw_ste_p, counter_trigger_15_0, ctr_id);
 MLX5_SET(ste_rx_steering_mult, hw_ste_p, counter_trigger_23_16, ctr_id >> 16);
}
