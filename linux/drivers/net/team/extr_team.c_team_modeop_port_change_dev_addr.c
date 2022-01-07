
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team_port {int dummy; } ;
struct team {int dummy; } ;


 int team_port_set_team_dev_addr (struct team*,struct team_port*) ;

void team_modeop_port_change_dev_addr(struct team *team,
          struct team_port *port)
{
 team_port_set_team_dev_addr(team, port);
}
