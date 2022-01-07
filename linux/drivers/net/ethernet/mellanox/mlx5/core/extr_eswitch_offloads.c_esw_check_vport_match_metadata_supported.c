
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_eswitch {int dev; } ;


 int MLX5_CAP_ESW (int ,int ) ;
 int MLX5_CAP_ESW_FLOWTABLE (int ,int ) ;
 int MLX5_FDB_TO_VPORT_REG_C_0 ;
 int esw_uplink_ingress_acl ;
 int fdb_to_vport_reg_c_id ;
 int flow_source ;
 scalar_t__ mlx5_core_is_ecpf_esw_manager (int ) ;
 scalar_t__ mlx5_ecpf_vport_exists (int ) ;

__attribute__((used)) static bool
esw_check_vport_match_metadata_supported(const struct mlx5_eswitch *esw)
{
 if (!MLX5_CAP_ESW(esw->dev, esw_uplink_ingress_acl))
  return 0;

 if (!(MLX5_CAP_ESW_FLOWTABLE(esw->dev, fdb_to_vport_reg_c_id) &
       MLX5_FDB_TO_VPORT_REG_C_0))
  return 0;

 if (!MLX5_CAP_ESW_FLOWTABLE(esw->dev, flow_source))
  return 0;

 if (mlx5_core_is_ecpf_esw_manager(esw->dev) ||
     mlx5_ecpf_vport_exists(esw->dev))
  return 0;

 return 1;
}
