
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;


 int EINVAL ;
 scalar_t__ MLX5_EXTRACT (unsigned int,int ,scalar_t__) ;
 int VSC_ADDR_OFFSET ;
 int VSC_DATA_OFFSET ;
 scalar_t__ VSC_FLAG_BIT_LEN ;
 scalar_t__ VSC_SYND_BIT_LEN ;
 int VSC_SYND_BIT_OFFS ;
 int mlx5_vsc_wait_on_flag (struct mlx5_core_dev*,int) ;
 int vsc_read (struct mlx5_core_dev*,int ,int *) ;
 int vsc_write (struct mlx5_core_dev*,int ,unsigned int) ;

__attribute__((used)) static int mlx5_vsc_gw_read(struct mlx5_core_dev *dev, unsigned int address,
       u32 *data)
{
 int ret;

 if (MLX5_EXTRACT(address, VSC_SYND_BIT_OFFS,
    VSC_FLAG_BIT_LEN + VSC_SYND_BIT_LEN))
  return -EINVAL;

 ret = vsc_write(dev, VSC_ADDR_OFFSET, address);
 if (ret)
  goto out;

 ret = mlx5_vsc_wait_on_flag(dev, 1);
 if (ret)
  goto out;

 ret = vsc_read(dev, VSC_DATA_OFFSET, data);
out:
 return ret;
}
