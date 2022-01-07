
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team_port {int dummy; } ;
struct team {int dummy; } ;


 int team_nl_send_multicast ;
 int team_nl_send_port_list_get (struct team*,int ,int ,int ,int ,struct team_port*) ;

__attribute__((used)) static int team_nl_send_event_port_get(struct team *team,
           struct team_port *port)
{
 return team_nl_send_port_list_get(team, 0, 0, 0, team_nl_send_multicast,
       port);
}
