
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct port {int sm_tx_timer_counter; int ntt; int sm_vars; int actor_port_number; TYPE_2__* slave; } ;
struct TYPE_4__ {int dev; TYPE_1__* bond; } ;
struct TYPE_3__ {int dev; } ;


 int AD_MAX_TX_IN_SECOND ;
 int AD_PORT_LACP_ENABLED ;
 int __update_lacpdu_from_port (struct port*) ;
 scalar_t__ ad_lacpdu_send (struct port*) ;
 int ad_ticks_per_sec ;
 int slave_dbg (int ,int ,char*,int ) ;

__attribute__((used)) static void ad_tx_machine(struct port *port)
{



 if (port->sm_tx_timer_counter && !(--port->sm_tx_timer_counter)) {

  if (port->ntt && (port->sm_vars & AD_PORT_LACP_ENABLED)) {
   __update_lacpdu_from_port(port);

   if (ad_lacpdu_send(port) >= 0) {
    slave_dbg(port->slave->bond->dev,
       port->slave->dev,
       "Sent LACPDU on port %d\n",
       port->actor_port_number);




    port->ntt = 0;
   }
  }



  port->sm_tx_timer_counter = ad_ticks_per_sec/AD_MAX_TX_IN_SECOND;
 }
}
