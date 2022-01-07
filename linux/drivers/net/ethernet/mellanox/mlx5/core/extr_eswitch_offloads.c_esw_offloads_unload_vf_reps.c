
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_eswitch {int dummy; } ;


 int NUM_REP_TYPES ;
 int __unload_reps_vf_vport (struct mlx5_eswitch*,int,int ) ;

__attribute__((used)) static void esw_offloads_unload_vf_reps(struct mlx5_eswitch *esw, int nvports)
{
 u8 rep_type = NUM_REP_TYPES;

 while (rep_type-- > 0)
  __unload_reps_vf_vport(esw, nvports, rep_type);
}
