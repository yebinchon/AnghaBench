
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_eswitch {int dummy; } ;


 int MLX5_LEGACY_SRIOV_VPORT_EVENTS ;
 int esw_create_legacy_table (struct mlx5_eswitch*) ;
 int mlx5_eswitch_enable_pf_vf_vports (struct mlx5_eswitch*,int ) ;

__attribute__((used)) static int esw_legacy_enable(struct mlx5_eswitch *esw)
{
 int ret;

 ret = esw_create_legacy_table(esw);
 if (ret)
  return ret;

 mlx5_eswitch_enable_pf_vf_vports(esw, MLX5_LEGACY_SRIOV_VPORT_EVENTS);
 return 0;
}
