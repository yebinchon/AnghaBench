
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_vr {int * fib4; int * fib6; int ** mr_table; } ;
struct mlxsw_sp {int dummy; } ;


 size_t MLXSW_SP_L3_PROTO_IPV4 ;
 size_t MLXSW_SP_L3_PROTO_IPV6 ;
 int mlxsw_sp_fib_destroy (struct mlxsw_sp*,int *) ;
 int mlxsw_sp_mr_table_destroy (int *) ;

__attribute__((used)) static void mlxsw_sp_vr_destroy(struct mlxsw_sp *mlxsw_sp,
    struct mlxsw_sp_vr *vr)
{
 mlxsw_sp_mr_table_destroy(vr->mr_table[MLXSW_SP_L3_PROTO_IPV6]);
 vr->mr_table[MLXSW_SP_L3_PROTO_IPV6] = ((void*)0);
 mlxsw_sp_mr_table_destroy(vr->mr_table[MLXSW_SP_L3_PROTO_IPV4]);
 vr->mr_table[MLXSW_SP_L3_PROTO_IPV4] = ((void*)0);
 mlxsw_sp_fib_destroy(mlxsw_sp, vr->fib6);
 vr->fib6 = ((void*)0);
 mlxsw_sp_fib_destroy(mlxsw_sp, vr->fib4);
 vr->fib4 = ((void*)0);
}
