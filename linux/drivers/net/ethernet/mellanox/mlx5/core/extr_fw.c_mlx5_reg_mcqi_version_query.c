
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mlx5_core_dev {int dummy; } ;


 int MCQI_INFO_TYPE_VERSION ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int mcqi_version ;
 int mlx5_reg_mcqi_query (struct mlx5_core_dev*,int ,int,int ,int ,int *) ;

__attribute__((used)) static int mlx5_reg_mcqi_version_query(struct mlx5_core_dev *dev,
           u16 component_index, bool read_pending,
           u32 *mcqi_version_out)
{
 return mlx5_reg_mcqi_query(dev, component_index, read_pending,
       MCQI_INFO_TYPE_VERSION,
       MLX5_ST_SZ_BYTES(mcqi_version),
       mcqi_version_out);
}
