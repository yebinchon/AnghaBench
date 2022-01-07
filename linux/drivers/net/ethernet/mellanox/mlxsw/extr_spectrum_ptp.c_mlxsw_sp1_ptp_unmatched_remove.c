
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp1_ptp_unmatched {int ht_node; } ;
struct mlxsw_sp {TYPE_1__* ptp_state; } ;
struct TYPE_2__ {int unmatched_ht; } ;


 int mlxsw_sp1_ptp_unmatched_ht_params ;
 int rhltable_remove (int *,int *,int ) ;

__attribute__((used)) static int
mlxsw_sp1_ptp_unmatched_remove(struct mlxsw_sp *mlxsw_sp,
          struct mlxsw_sp1_ptp_unmatched *unmatched)
{
 return rhltable_remove(&mlxsw_sp->ptp_state->unmatched_ht,
          &unmatched->ht_node,
          mlxsw_sp1_ptp_unmatched_ht_params);
}
