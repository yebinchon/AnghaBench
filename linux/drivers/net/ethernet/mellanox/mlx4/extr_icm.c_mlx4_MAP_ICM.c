
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx4_icm {int dummy; } ;
struct mlx4_dev {int dummy; } ;


 int MLX4_CMD_MAP_ICM ;
 int mlx4_map_cmd (struct mlx4_dev*,int ,struct mlx4_icm*,int ) ;

__attribute__((used)) static int mlx4_MAP_ICM(struct mlx4_dev *dev, struct mlx4_icm *icm, u64 virt)
{
 return mlx4_map_cmd(dev, MLX4_CMD_MAP_ICM, icm, virt);
}
