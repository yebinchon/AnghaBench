
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int num_vfs; } ;
struct mlx5_eswitch {TYPE_1__ esw_funcs; } ;


 int __load_reps_special_vport (struct mlx5_eswitch*,int ) ;
 int __load_reps_vf_vport (struct mlx5_eswitch*,int ,int ) ;
 int __unload_reps_special_vport (struct mlx5_eswitch*,int ) ;

__attribute__((used)) static int __load_reps_all_vport(struct mlx5_eswitch *esw, u8 rep_type)
{
 int err;


 err = __load_reps_special_vport(esw, rep_type);
 if (err)
  return err;

 err = __load_reps_vf_vport(esw, esw->esw_funcs.num_vfs, rep_type);
 if (err)
  goto err_vfs;

 return 0;

err_vfs:
 __unload_reps_special_vport(esw, rep_type);
 return err;
}
