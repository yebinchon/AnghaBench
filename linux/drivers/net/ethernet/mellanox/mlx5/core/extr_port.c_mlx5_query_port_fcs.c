
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;
typedef int out ;


 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int MLX5_GET (int ,int *,int ) ;
 int MLX5_ST_SZ_DW (int ) ;
 int fcs_cap ;
 int fcs_chk ;
 scalar_t__ mlx5_query_ports_check (struct mlx5_core_dev*,int *,int) ;
 int pcmr_reg ;
 int ports_check ;

void mlx5_query_port_fcs(struct mlx5_core_dev *mdev, bool *supported,
    bool *enabled)
{
 u32 out[MLX5_ST_SZ_DW(pcmr_reg)];

 *supported = 0;
 *enabled = 1;

 if (!MLX5_CAP_GEN(mdev, ports_check))
  return;

 if (mlx5_query_ports_check(mdev, out, sizeof(out)))
  return;

 *supported = !!(MLX5_GET(pcmr_reg, out, fcs_cap));
 *enabled = !!(MLX5_GET(pcmr_reg, out, fcs_chk));
}
