
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pfc; } ;
struct mlxsw_sp_port {TYPE_1__ dcb; } ;


 int kfree (int ) ;

__attribute__((used)) static void mlxsw_sp_port_pfc_fini(struct mlxsw_sp_port *mlxsw_sp_port)
{
 kfree(mlxsw_sp_port->dcb.pfc);
}
