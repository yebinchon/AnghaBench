
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx5_fpga_device {int dummy; } ;
typedef enum mlx5_fpga_access_type { ____Placeholder_mlx5_fpga_access_type } mlx5_fpga_access_type ;


 int EACCES ;

 int mlx5_fpga_mem_read_i2c (struct mlx5_fpga_device*,size_t,int ,void*) ;
 int mlx5_fpga_warn (struct mlx5_fpga_device*,char*,int) ;

int mlx5_fpga_mem_read(struct mlx5_fpga_device *fdev, size_t size, u64 addr,
         void *buf, enum mlx5_fpga_access_type access_type)
{
 int ret;

 switch (access_type) {
 case 128:
  ret = mlx5_fpga_mem_read_i2c(fdev, size, addr, buf);
  if (ret)
   return ret;
  break;
 default:
  mlx5_fpga_warn(fdev, "Unexpected read access_type %u\n",
          access_type);
  return -EACCES;
 }

 return size;
}
