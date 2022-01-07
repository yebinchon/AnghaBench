
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_port_tun_entropy_flags {int force_supported; int calc_supported; int gre_calc_supported; int force_enabled; int calc_enabled; int gre_calc_enabled; } ;
struct mlx5_core_dev {int dummy; } ;
typedef int out ;


 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int MLX5_GET (int ,int *,int ) ;
 int MLX5_ST_SZ_DW (int ) ;
 int entropy_calc ;
 int entropy_calc_cap ;
 int entropy_force ;
 int entropy_force_cap ;
 int entropy_gre_calc ;
 int entropy_gre_calc_cap ;
 scalar_t__ mlx5_query_ports_check (struct mlx5_core_dev*,int *,int) ;
 int pcmr_reg ;
 int ports_check ;

__attribute__((used)) static void mlx5_query_port_tun_entropy(struct mlx5_core_dev *mdev,
     struct mlx5_port_tun_entropy_flags *entropy_flags)
{
 u32 out[MLX5_ST_SZ_DW(pcmr_reg)];

 entropy_flags->force_supported = 0;
 entropy_flags->calc_supported = 0;
 entropy_flags->gre_calc_supported = 0;
 entropy_flags->force_enabled = 0;
 entropy_flags->calc_enabled = 1;
 entropy_flags->gre_calc_enabled = 1;

 if (!MLX5_CAP_GEN(mdev, ports_check))
  return;

 if (mlx5_query_ports_check(mdev, out, sizeof(out)))
  return;

 entropy_flags->force_supported = !!(MLX5_GET(pcmr_reg, out, entropy_force_cap));
 entropy_flags->calc_supported = !!(MLX5_GET(pcmr_reg, out, entropy_calc_cap));
 entropy_flags->gre_calc_supported = !!(MLX5_GET(pcmr_reg, out, entropy_gre_calc_cap));
 entropy_flags->force_enabled = !!(MLX5_GET(pcmr_reg, out, entropy_force));
 entropy_flags->calc_enabled = !!(MLX5_GET(pcmr_reg, out, entropy_calc));
 entropy_flags->gre_calc_enabled = !!(MLX5_GET(pcmr_reg, out, entropy_gre_calc));
}
