
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlxsw_core {int bus_priv; TYPE_1__* bus; } ;
struct TYPE_2__ {int (* read_frc_h ) (int ) ;} ;


 int stub1 (int ) ;

u32 mlxsw_core_read_frc_h(struct mlxsw_core *mlxsw_core)
{
 return mlxsw_core->bus->read_frc_h(mlxsw_core->bus_priv);
}
