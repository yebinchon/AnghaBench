
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ksz_port {int flow_ctrl; } ;





 int PORT_AUTO_NEG_SYM_PAUSE ;

__attribute__((used)) static u16 advertised_flow_ctrl(struct ksz_port *port, u16 ctrl)
{
 ctrl &= ~PORT_AUTO_NEG_SYM_PAUSE;
 switch (port->flow_ctrl) {
 case 130:
  ctrl |= PORT_AUTO_NEG_SYM_PAUSE;
  break;

 case 128:
 case 129:
 default:
  break;
 }
 return ctrl;
}
