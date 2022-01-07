
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mlxsw_sp_port {int dev; } ;


 scalar_t__ dcb_ieee_getapp_default_prio_mask (int ) ;
 scalar_t__ fls (scalar_t__) ;

__attribute__((used)) static u8
mlxsw_sp_port_dcb_app_default_prio(struct mlxsw_sp_port *mlxsw_sp_port)
{
 u8 prio_mask;

 prio_mask = dcb_ieee_getapp_default_prio_mask(mlxsw_sp_port->dev);
 if (prio_mask)

  return fls(prio_mask) - 1;

 return 0;
}
