
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct mlx4_dev {int dummy; } ;


 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_TIME_CLASS_B ;
 int MLX4_CMD_UNMAP_ICM ;
 int mlx4_cmd (struct mlx4_dev*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int mlx4_UNMAP_ICM(struct mlx4_dev *dev, u64 virt, u32 page_count)
{
 return mlx4_cmd(dev, virt, page_count, 0, MLX4_CMD_UNMAP_ICM,
   MLX4_CMD_TIME_CLASS_B, MLX4_CMD_NATIVE);
}
