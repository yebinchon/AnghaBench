
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;


 int EINVAL ;
 unsigned int MLX5_EXTRACT (unsigned int,int ,int ) ;
 int VSC_ADDR_BIT_LEN ;
 int VSC_ADDR_BIT_OFFS ;
 int VSC_ADDR_OFFSET ;
 int mlx5_vsc_gw_read (struct mlx5_core_dev*,unsigned int,int *) ;
 int vsc_read (struct mlx5_core_dev*,int ,unsigned int*) ;

__attribute__((used)) static int mlx5_vsc_gw_read_fast(struct mlx5_core_dev *dev,
     unsigned int read_addr,
     unsigned int *next_read_addr,
     u32 *data)
{
 int ret;

 ret = mlx5_vsc_gw_read(dev, read_addr, data);
 if (ret)
  goto out;

 ret = vsc_read(dev, VSC_ADDR_OFFSET, next_read_addr);
 if (ret)
  goto out;

 *next_read_addr = MLX5_EXTRACT(*next_read_addr, VSC_ADDR_BIT_OFFS,
           VSC_ADDR_BIT_LEN);

 if (*next_read_addr <= read_addr)
  ret = -EINVAL;
out:
 return ret;
}
