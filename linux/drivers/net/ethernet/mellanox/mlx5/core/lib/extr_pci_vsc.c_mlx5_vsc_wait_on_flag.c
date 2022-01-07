
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct mlx5_core_dev {int dummy; } ;


 int EBUSY ;
 scalar_t__ MLX5_EXTRACT (scalar_t__,int ,int ) ;
 int VSC_ADDR_OFFSET ;
 int VSC_FLAG_BIT_LEN ;
 int VSC_FLAG_BIT_OFFS ;
 int VSC_MAX_RETRIES ;
 int usleep_range (int,int) ;
 int vsc_read (struct mlx5_core_dev*,int ,scalar_t__*) ;

__attribute__((used)) static int mlx5_vsc_wait_on_flag(struct mlx5_core_dev *dev, u8 expected_val)
{
 int retries = 0;
 u32 flag;
 int ret;

 do {
  if (retries > VSC_MAX_RETRIES)
   return -EBUSY;

  ret = vsc_read(dev, VSC_ADDR_OFFSET, &flag);
  if (ret)
   return ret;
  flag = MLX5_EXTRACT(flag, VSC_FLAG_BIT_OFFS, VSC_FLAG_BIT_LEN);
  retries++;

  if ((retries & 0xf) == 0)
   usleep_range(1000, 2000);

 } while (flag != expected_val);

 return 0;
}
