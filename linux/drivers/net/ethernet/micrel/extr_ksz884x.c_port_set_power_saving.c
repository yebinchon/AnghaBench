
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_port {int first_port; int port_cnt; struct ksz_hw* hw; } ;
struct ksz_hw {int dummy; } ;


 int KS884X_PORT_CTRL_4_OFFSET ;
 int PORT_POWER_DOWN ;
 int port_cfg (struct ksz_hw*,int,int ,int ,int) ;

__attribute__((used)) static void port_set_power_saving(struct ksz_port *port, int enable)
{
 struct ksz_hw *hw = port->hw;
 int i;
 int p;

 for (i = 0, p = port->first_port; i < port->port_cnt; i++, p++)
  port_cfg(hw, p,
   KS884X_PORT_CTRL_4_OFFSET, PORT_POWER_DOWN, enable);
}
