
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_vr {int * mr_table; int fib6; int fib4; } ;


 size_t MLXSW_SP_L3_PROTO_IPV4 ;
 size_t MLXSW_SP_L3_PROTO_IPV6 ;

__attribute__((used)) static bool mlxsw_sp_vr_is_used(const struct mlxsw_sp_vr *vr)
{
 return !!vr->fib4 || !!vr->fib6 ||
        !!vr->mr_table[MLXSW_SP_L3_PROTO_IPV4] ||
        !!vr->mr_table[MLXSW_SP_L3_PROTO_IPV6];
}
