
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int linkup; } ;
struct TYPE_3__ {int linkup; scalar_t__ linkup_enabled; } ;
struct team_port {int linkup; TYPE_2__ state; TYPE_1__ user; } ;


 int team_lower_state_changed (struct team_port*) ;

__attribute__((used)) static void team_refresh_port_linkup(struct team_port *port)
{
 bool new_linkup = port->user.linkup_enabled ? port->user.linkup :
            port->state.linkup;

 if (port->linkup != new_linkup) {
  port->linkup = new_linkup;
  team_lower_state_changed(port);
 }
}
