
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct mlx5_core_dev {int dummy; } ;


 int EINVAL ;
 scalar_t__ MLX5_EXTRACT (scalar_t__,int ,int ) ;
 scalar_t__ MLX5_MERGE (scalar_t__,int ,int ,int ) ;
 int VSC_ADDR_BIT_LEN ;
 int VSC_ADDR_BIT_OFFS ;
 int VSC_ADDR_OFFSET ;
 int VSC_CTRL_OFFSET ;
 int VSC_SIZE_VLD_BIT_LEN ;
 int VSC_SIZE_VLD_BIT_OFFS ;
 int VSC_SPACE_BIT_LEN ;
 int VSC_SPACE_BIT_OFFS ;
 int VSC_STATUS_BIT_LEN ;
 int VSC_STATUS_BIT_OFFS ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*) ;
 int mlx5_vsc_accessible (struct mlx5_core_dev*) ;
 int vsc_read (struct mlx5_core_dev*,int ,scalar_t__*) ;
 int vsc_write (struct mlx5_core_dev*,int ,scalar_t__) ;

int mlx5_vsc_gw_set_space(struct mlx5_core_dev *dev, u16 space,
     u32 *ret_space_size)
{
 int ret;
 u32 val = 0;

 if (!mlx5_vsc_accessible(dev))
  return -EINVAL;

 if (ret_space_size)
  *ret_space_size = 0;


 ret = vsc_read(dev, VSC_CTRL_OFFSET, &val);
 if (ret)
  goto out;


 val = MLX5_MERGE(val, space, VSC_SPACE_BIT_OFFS, VSC_SPACE_BIT_LEN);
 ret = vsc_write(dev, VSC_CTRL_OFFSET, val);
 if (ret)
  goto out;


 ret = vsc_read(dev, VSC_CTRL_OFFSET, &val);
 if (ret)
  goto out;

 if (MLX5_EXTRACT(val, VSC_STATUS_BIT_OFFS, VSC_STATUS_BIT_LEN) == 0)
  return -EINVAL;


 if (ret_space_size &&
     MLX5_EXTRACT(val, VSC_SIZE_VLD_BIT_OFFS, VSC_SIZE_VLD_BIT_LEN)) {
  ret = vsc_read(dev, VSC_ADDR_OFFSET, &val);
  if (ret) {
   mlx5_core_warn(dev, "Failed to get max space size\n");
   goto out;
  }
  *ret_space_size = MLX5_EXTRACT(val, VSC_ADDR_BIT_OFFS,
            VSC_ADDR_BIT_LEN);
 }
 return 0;

out:
 return ret;
}
