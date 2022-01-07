
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_vr {struct mlxsw_sp_fib* fib6; struct mlxsw_sp_fib* fib4; } ;
struct mlxsw_sp_fib {int dummy; } ;
typedef enum mlxsw_sp_l3proto { ____Placeholder_mlxsw_sp_l3proto } mlxsw_sp_l3proto ;





__attribute__((used)) static struct mlxsw_sp_fib *mlxsw_sp_vr_fib(const struct mlxsw_sp_vr *vr,
         enum mlxsw_sp_l3proto proto)
{
 switch (proto) {
 case 129:
  return vr->fib4;
 case 128:
  return vr->fib6;
 }
 return ((void*)0);
}
