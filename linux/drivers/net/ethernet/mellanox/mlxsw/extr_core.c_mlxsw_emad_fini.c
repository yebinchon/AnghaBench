
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int use_emad; } ;
struct mlxsw_core {int emad_wq; TYPE_2__ emad; TYPE_1__* bus; } ;
struct TYPE_3__ {int features; } ;


 int MLXSW_BUS_F_TXRX ;
 int destroy_workqueue (int ) ;
 int mlxsw_core_trap_unregister (struct mlxsw_core*,int *,struct mlxsw_core*) ;
 int mlxsw_emad_rx_listener ;

__attribute__((used)) static void mlxsw_emad_fini(struct mlxsw_core *mlxsw_core)
{

 if (!(mlxsw_core->bus->features & MLXSW_BUS_F_TXRX))
  return;

 mlxsw_core->emad.use_emad = 0;
 mlxsw_core_trap_unregister(mlxsw_core, &mlxsw_emad_rx_listener,
       mlxsw_core);
 destroy_workqueue(mlxsw_core->emad_wq);
}
