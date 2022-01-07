
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_params {scalar_t__ port_number; scalar_t__ port_priority; scalar_t__ system_priority; scalar_t__ key; int port_state; int system; } ;
struct port {int sm_vars; struct port_params partner_oper; } ;
struct lacpdu {int actor_state; int actor_key; int actor_system_priority; int actor_system; int actor_port_priority; int actor_port; } ;


 int AD_PORT_SELECTED ;
 int AD_STATE_AGGREGATION ;
 int MAC_ADDRESS_EQUAL (int *,int *) ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static void __update_selected(struct lacpdu *lacpdu, struct port *port)
{
 if (lacpdu && port) {
  const struct port_params *partner = &port->partner_oper;




  if (ntohs(lacpdu->actor_port) != partner->port_number ||
      ntohs(lacpdu->actor_port_priority) != partner->port_priority ||
      !MAC_ADDRESS_EQUAL(&lacpdu->actor_system, &partner->system) ||
      ntohs(lacpdu->actor_system_priority) != partner->system_priority ||
      ntohs(lacpdu->actor_key) != partner->key ||
      (lacpdu->actor_state & AD_STATE_AGGREGATION) != (partner->port_state & AD_STATE_AGGREGATION)) {
   port->sm_vars &= ~AD_PORT_SELECTED;
  }
 }
}
