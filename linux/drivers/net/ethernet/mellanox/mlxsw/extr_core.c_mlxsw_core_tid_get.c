
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int tid; } ;
struct mlxsw_core {TYPE_1__ emad; } ;


 int atomic64_inc_return (int *) ;

__attribute__((used)) static u64 mlxsw_core_tid_get(struct mlxsw_core *mlxsw_core)
{
 return atomic64_inc_return(&mlxsw_core->emad.tid);
}
