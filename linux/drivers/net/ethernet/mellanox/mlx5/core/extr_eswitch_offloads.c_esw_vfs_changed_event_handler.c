
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ num_vfs; } ;
struct mlx5_eswitch {TYPE_1__ esw_funcs; } ;
struct TYPE_4__ {int host_pf_disabled; int host_num_of_vfs; } ;


 void* MLX5_GET (int ,int const*,int ) ;
 int esw_offloads_load_vf_reps (struct mlx5_eswitch*,scalar_t__) ;
 int esw_offloads_unload_vf_reps (struct mlx5_eswitch*,scalar_t__) ;
 TYPE_2__ host_params_context ;
 int query_esw_functions_out ;

__attribute__((used)) static void
esw_vfs_changed_event_handler(struct mlx5_eswitch *esw, const u32 *out)
{
 bool host_pf_disabled;
 u16 new_num_vfs;

 new_num_vfs = MLX5_GET(query_esw_functions_out, out,
          host_params_context.host_num_of_vfs);
 host_pf_disabled = MLX5_GET(query_esw_functions_out, out,
        host_params_context.host_pf_disabled);

 if (new_num_vfs == esw->esw_funcs.num_vfs || host_pf_disabled)
  return;


 if (esw->esw_funcs.num_vfs > 0) {
  esw_offloads_unload_vf_reps(esw, esw->esw_funcs.num_vfs);
 } else {
  int err;

  err = esw_offloads_load_vf_reps(esw, new_num_vfs);
  if (err)
   return;
 }
 esw->esw_funcs.num_vfs = new_num_vfs;
}
