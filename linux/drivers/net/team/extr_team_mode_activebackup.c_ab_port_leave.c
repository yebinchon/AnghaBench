
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct team_port {int dummy; } ;
struct team {int dummy; } ;
struct TYPE_2__ {int ap_opt_inst_info; struct team_port* active_port; } ;


 int RCU_INIT_POINTER (struct team_port*,int *) ;
 TYPE_1__* ab_priv (struct team*) ;
 int team_option_inst_set_change (int ) ;

__attribute__((used)) static void ab_port_leave(struct team *team, struct team_port *port)
{
 if (ab_priv(team)->active_port == port) {
  RCU_INIT_POINTER(ab_priv(team)->active_port, ((void*)0));
  team_option_inst_set_change(ab_priv(team)->ap_opt_inst_info);
 }
}
