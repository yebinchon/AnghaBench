
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port_state; } ;
struct port {int sm_vars; scalar_t__ sm_churn_actor_state; scalar_t__ sm_churn_partner_state; int actor_oper_port_state; int churn_partner_count; TYPE_1__ partner_oper; void* sm_churn_partner_timer_counter; int churn_actor_count; void* sm_churn_actor_timer_counter; } ;


 int AD_ACTOR_CHURN_TIMER ;
 void* AD_CHURN ;
 scalar_t__ AD_CHURN_MONITOR ;
 void* AD_NO_CHURN ;
 int AD_PARTNER_CHURN_TIMER ;
 int AD_PORT_CHURNED ;
 int AD_STATE_SYNCHRONIZATION ;
 void* __ad_timer_to_ticks (int ,int ) ;

__attribute__((used)) static void ad_churn_machine(struct port *port)
{
 if (port->sm_vars & AD_PORT_CHURNED) {
  port->sm_vars &= ~AD_PORT_CHURNED;
  port->sm_churn_actor_state = AD_CHURN_MONITOR;
  port->sm_churn_partner_state = AD_CHURN_MONITOR;
  port->sm_churn_actor_timer_counter =
   __ad_timer_to_ticks(AD_ACTOR_CHURN_TIMER, 0);
  port->sm_churn_partner_timer_counter =
    __ad_timer_to_ticks(AD_PARTNER_CHURN_TIMER, 0);
  return;
 }
 if (port->sm_churn_actor_timer_counter &&
     !(--port->sm_churn_actor_timer_counter) &&
     port->sm_churn_actor_state == AD_CHURN_MONITOR) {
  if (port->actor_oper_port_state & AD_STATE_SYNCHRONIZATION) {
   port->sm_churn_actor_state = AD_NO_CHURN;
  } else {
   port->churn_actor_count++;
   port->sm_churn_actor_state = AD_CHURN;
  }
 }
 if (port->sm_churn_partner_timer_counter &&
     !(--port->sm_churn_partner_timer_counter) &&
     port->sm_churn_partner_state == AD_CHURN_MONITOR) {
  if (port->partner_oper.port_state & AD_STATE_SYNCHRONIZATION) {
   port->sm_churn_partner_state = AD_NO_CHURN;
  } else {
   port->churn_partner_count++;
   port->sm_churn_partner_state = AD_CHURN;
  }
 }
}
