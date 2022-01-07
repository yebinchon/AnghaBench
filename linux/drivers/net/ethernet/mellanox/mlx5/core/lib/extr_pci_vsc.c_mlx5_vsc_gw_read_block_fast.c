
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;


 scalar_t__ mlx5_vsc_gw_read_fast (struct mlx5_core_dev*,unsigned int,unsigned int*,int *) ;

int mlx5_vsc_gw_read_block_fast(struct mlx5_core_dev *dev, u32 *data,
    int length)
{
 unsigned int next_read_addr = 0;
 unsigned int read_addr = 0;

 while (read_addr < length) {
  if (mlx5_vsc_gw_read_fast(dev, read_addr, &next_read_addr,
       &data[(read_addr >> 2)]))
   return read_addr;

  read_addr = next_read_addr;
 }
 return length;
}
