
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int num_vfs; } ;
struct mlx5_eswitch {scalar_t__ mode; TYPE_1__ esw_funcs; int dev; } ;
struct TYPE_4__ {int host_num_of_vfs; } ;


 scalar_t__ IS_ERR (int const*) ;
 scalar_t__ MLX5_ESWITCH_NONE ;
 int MLX5_GET (int ,int const*,int ) ;
 int WARN_ON_ONCE (int) ;
 TYPE_2__ host_params_context ;
 int kvfree (int const*) ;
 int mlx5_core_is_ecpf_esw_manager (int ) ;
 int * mlx5_esw_query_functions (int ) ;
 int query_esw_functions_out ;

void mlx5_eswitch_update_num_of_vfs(struct mlx5_eswitch *esw, const int num_vfs)
{
 const u32 *out;

 WARN_ON_ONCE(esw->mode != MLX5_ESWITCH_NONE);

 if (!mlx5_core_is_ecpf_esw_manager(esw->dev)) {
  esw->esw_funcs.num_vfs = num_vfs;
  return;
 }

 out = mlx5_esw_query_functions(esw->dev);
 if (IS_ERR(out))
  return;

 esw->esw_funcs.num_vfs = MLX5_GET(query_esw_functions_out, out,
       host_params_context.host_num_of_vfs);
 kvfree(out);
}
