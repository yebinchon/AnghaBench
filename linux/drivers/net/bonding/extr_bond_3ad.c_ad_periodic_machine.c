
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int port_state; } ;
struct port {scalar_t__ sm_periodic_state; int sm_vars; int actor_oper_port_state; int ntt; scalar_t__ sm_periodic_timer_counter; int actor_port_number; TYPE_3__* slave; TYPE_1__ partner_oper; int is_enabled; } ;
typedef scalar_t__ periodic_states_t ;
struct TYPE_6__ {int dev; TYPE_2__* bond; } ;
struct TYPE_5__ {int dev; } ;



 int AD_FAST_PERIODIC_TIME ;

 int AD_PERIODIC_TIMER ;

 int AD_PORT_BEGIN ;
 int AD_PORT_LACP_ENABLED ;

 int AD_SLOW_PERIODIC_TIME ;
 int AD_STATE_LACP_ACTIVITY ;
 int AD_STATE_LACP_TIMEOUT ;
 int __ad_timer_to_ticks (int ,int ) ;
 int slave_dbg (int ,int ,char*,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void ad_periodic_machine(struct port *port)
{
 periodic_states_t last_state;


 last_state = port->sm_periodic_state;


 if (((port->sm_vars & AD_PORT_BEGIN) || !(port->sm_vars & AD_PORT_LACP_ENABLED) || !port->is_enabled) ||
     (!(port->actor_oper_port_state & AD_STATE_LACP_ACTIVITY) && !(port->partner_oper.port_state & AD_STATE_LACP_ACTIVITY))
    ) {
  port->sm_periodic_state = 130;
 }

 else if (port->sm_periodic_timer_counter) {

  if (!(--port->sm_periodic_timer_counter)) {

   port->sm_periodic_state = 129;
  } else {



   switch (port->sm_periodic_state) {
   case 131:
    if (!(port->partner_oper.port_state
          & AD_STATE_LACP_TIMEOUT))
     port->sm_periodic_state = 128;
    break;
   case 128:
    if ((port->partner_oper.port_state & AD_STATE_LACP_TIMEOUT)) {
     port->sm_periodic_timer_counter = 0;
     port->sm_periodic_state = 129;
    }
    break;
   default:
    break;
   }
  }
 } else {
  switch (port->sm_periodic_state) {
  case 130:
   port->sm_periodic_state = 131;
   break;
  case 129:
   if (!(port->partner_oper.port_state &
       AD_STATE_LACP_TIMEOUT))
    port->sm_periodic_state = 128;
   else
    port->sm_periodic_state = 131;
   break;
  default:
   break;
  }
 }


 if (port->sm_periodic_state != last_state) {
  slave_dbg(port->slave->bond->dev, port->slave->dev,
     "Periodic Machine: Port=%d, Last State=%d, Curr State=%d\n",
     port->actor_port_number, last_state,
     port->sm_periodic_state);
  switch (port->sm_periodic_state) {
  case 130:
   port->sm_periodic_timer_counter = 0;
   break;
  case 131:

   port->sm_periodic_timer_counter = __ad_timer_to_ticks(AD_PERIODIC_TIMER, (u16)(AD_FAST_PERIODIC_TIME))-1;
   break;
  case 128:

   port->sm_periodic_timer_counter = __ad_timer_to_ticks(AD_PERIODIC_TIMER, (u16)(AD_SLOW_PERIODIC_TIME))-1;
   break;
  case 129:
   port->ntt = 1;
   break;
  default:
   break;
  }
 }
}
