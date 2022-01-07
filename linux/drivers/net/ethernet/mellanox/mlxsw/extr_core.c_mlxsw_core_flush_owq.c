
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_workqueue (int ) ;
 int mlxsw_owq ;

void mlxsw_core_flush_owq(void)
{
 flush_workqueue(mlxsw_owq);
}
