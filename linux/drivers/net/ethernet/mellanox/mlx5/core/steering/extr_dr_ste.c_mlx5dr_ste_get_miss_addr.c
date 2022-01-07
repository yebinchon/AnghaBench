
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int MLX5_GET (int ,int *,int ) ;
 int miss_address_31_6 ;
 int miss_address_39_32 ;
 int ste_rx_steering_mult ;

u64 mlx5dr_ste_get_miss_addr(u8 *hw_ste)
{
 u64 index =
  (MLX5_GET(ste_rx_steering_mult, hw_ste, miss_address_31_6) |
   MLX5_GET(ste_rx_steering_mult, hw_ste, miss_address_39_32) << 26);

 return index << 6;
}
