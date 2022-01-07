
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;


 int find_first_bit (unsigned long*,int) ;
 int mlx5e_port_get_speed_arr (struct mlx5_core_dev*,int const**,int*,int) ;

u32 mlx5e_port_ptys2speed(struct mlx5_core_dev *mdev, u32 eth_proto_oper,
     bool force_legacy)
{
 unsigned long temp = eth_proto_oper;
 const u32 *table;
 u32 speed = 0;
 u32 max_size;
 int i;

 mlx5e_port_get_speed_arr(mdev, &table, &max_size, force_legacy);
 i = find_first_bit(&temp, max_size);
 if (i < max_size)
  speed = table[i];
 return speed;
}
