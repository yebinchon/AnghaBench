
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ egr_types; scalar_t__ ing_types; } ;
struct mlxsw_sp_port {TYPE_1__ ptp; } ;



__attribute__((used)) static bool mlxsw_sp1_ptp_hwtstamp_enabled(struct mlxsw_sp_port *mlxsw_sp_port)
{
 return mlxsw_sp_port->ptp.ing_types || mlxsw_sp_port->ptp.egr_types;
}
