
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {scalar_t__ actor_port_number; scalar_t__ actor_port_priority; scalar_t__ actor_system_priority; scalar_t__ actor_oper_port_key; int actor_oper_port_state; int sm_vars; int actor_system; } ;
struct lacpdu {int partner_state; int actor_state; int partner_key; int partner_system_priority; int partner_system; int partner_port_priority; int partner_port; } ;


 int AD_PORT_MATCHED ;
 int AD_STATE_AGGREGATION ;
 scalar_t__ MAC_ADDRESS_EQUAL (int *,int *) ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static void __choose_matched(struct lacpdu *lacpdu, struct port *port)
{




 if (((ntohs(lacpdu->partner_port) == port->actor_port_number) &&
      (ntohs(lacpdu->partner_port_priority) == port->actor_port_priority) &&
      MAC_ADDRESS_EQUAL(&(lacpdu->partner_system), &(port->actor_system)) &&
      (ntohs(lacpdu->partner_system_priority) == port->actor_system_priority) &&
      (ntohs(lacpdu->partner_key) == port->actor_oper_port_key) &&
      ((lacpdu->partner_state & AD_STATE_AGGREGATION) == (port->actor_oper_port_state & AD_STATE_AGGREGATION))) ||
     ((lacpdu->actor_state & AD_STATE_AGGREGATION) == 0)
  ) {
  port->sm_vars |= AD_PORT_MATCHED;
 } else {
  port->sm_vars &= ~AD_PORT_MATCHED;
 }
}
