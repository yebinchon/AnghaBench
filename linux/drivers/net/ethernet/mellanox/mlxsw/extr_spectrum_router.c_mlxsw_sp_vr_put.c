
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxsw_sp_vr {int * mr_table; TYPE_2__* fib6; TYPE_1__* fib4; int rif_count; } ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_4__ {int node_list; } ;
struct TYPE_3__ {int node_list; } ;


 size_t MLXSW_SP_L3_PROTO_IPV4 ;
 size_t MLXSW_SP_L3_PROTO_IPV6 ;
 scalar_t__ list_empty (int *) ;
 scalar_t__ mlxsw_sp_mr_table_empty (int ) ;
 int mlxsw_sp_vr_destroy (struct mlxsw_sp*,struct mlxsw_sp_vr*) ;

__attribute__((used)) static void mlxsw_sp_vr_put(struct mlxsw_sp *mlxsw_sp, struct mlxsw_sp_vr *vr)
{
 if (!vr->rif_count && list_empty(&vr->fib4->node_list) &&
     list_empty(&vr->fib6->node_list) &&
     mlxsw_sp_mr_table_empty(vr->mr_table[MLXSW_SP_L3_PROTO_IPV4]) &&
     mlxsw_sp_mr_table_empty(vr->mr_table[MLXSW_SP_L3_PROTO_IPV6]))
  mlxsw_sp_vr_destroy(mlxsw_sp, vr);
}
