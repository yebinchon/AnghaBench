
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rx_pause; scalar_t__ tx_pause; } ;
struct mlxsw_sp_port {TYPE_1__ link; } ;



__attribute__((used)) static inline bool
mlxsw_sp_port_is_pause_en(const struct mlxsw_sp_port *mlxsw_sp_port)
{
 return mlxsw_sp_port->link.tx_pause || mlxsw_sp_port->link.rx_pause;
}
