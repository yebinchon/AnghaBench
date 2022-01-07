
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_eswitch_rep {int dummy; } ;
struct mlx5_eswitch {int dev; } ;


 int MLX5_VPORT_ECPF ;
 int MLX5_VPORT_PF ;
 int MLX5_VPORT_UPLINK ;
 int __esw_offloads_load_rep (struct mlx5_eswitch*,struct mlx5_eswitch_rep*,int ) ;
 int __esw_offloads_unload_rep (struct mlx5_eswitch*,struct mlx5_eswitch_rep*,int ) ;
 scalar_t__ mlx5_core_is_ecpf_esw_manager (int ) ;
 scalar_t__ mlx5_ecpf_vport_exists (int ) ;
 struct mlx5_eswitch_rep* mlx5_eswitch_get_rep (struct mlx5_eswitch*,int ) ;

__attribute__((used)) static int __load_reps_special_vport(struct mlx5_eswitch *esw, u8 rep_type)
{
 struct mlx5_eswitch_rep *rep;
 int err;

 rep = mlx5_eswitch_get_rep(esw, MLX5_VPORT_UPLINK);
 err = __esw_offloads_load_rep(esw, rep, rep_type);
 if (err)
  return err;

 if (mlx5_core_is_ecpf_esw_manager(esw->dev)) {
  rep = mlx5_eswitch_get_rep(esw, MLX5_VPORT_PF);
  err = __esw_offloads_load_rep(esw, rep, rep_type);
  if (err)
   goto err_pf;
 }

 if (mlx5_ecpf_vport_exists(esw->dev)) {
  rep = mlx5_eswitch_get_rep(esw, MLX5_VPORT_ECPF);
  err = __esw_offloads_load_rep(esw, rep, rep_type);
  if (err)
   goto err_ecpf;
 }

 return 0;

err_ecpf:
 if (mlx5_core_is_ecpf_esw_manager(esw->dev)) {
  rep = mlx5_eswitch_get_rep(esw, MLX5_VPORT_PF);
  __esw_offloads_unload_rep(esw, rep, rep_type);
 }

err_pf:
 rep = mlx5_eswitch_get_rep(esw, MLX5_VPORT_UPLINK);
 __esw_offloads_unload_rep(esw, rep, rep_type);
 return err;
}
