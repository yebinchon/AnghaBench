
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mlx5_eswitch {int dummy; } ;


 scalar_t__ NUM_REP_TYPES ;
 int __load_reps_all_vport (struct mlx5_eswitch*,scalar_t__) ;
 int __unload_reps_all_vport (struct mlx5_eswitch*,scalar_t__) ;

__attribute__((used)) static int esw_offloads_load_all_reps(struct mlx5_eswitch *esw)
{
 u8 rep_type = 0;
 int err;

 for (rep_type = 0; rep_type < NUM_REP_TYPES; rep_type++) {
  err = __load_reps_all_vport(esw, rep_type);
  if (err)
   goto err_reps;
 }

 return err;

err_reps:
 while (rep_type-- > 0)
  __unload_reps_all_vport(esw, rep_type);
 return err;
}
