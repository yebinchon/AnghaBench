
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team {int dummy; } ;
struct list_head {int dummy; } ;


 int team_nl_send_multicast ;
 int team_nl_send_options_get (struct team*,int ,int ,int ,int ,struct list_head*) ;

__attribute__((used)) static int team_nl_send_event_options_get(struct team *team,
       struct list_head *sel_opt_inst_list)
{
 return team_nl_send_options_get(team, 0, 0, 0, team_nl_send_multicast,
     sel_opt_inst_list);
}
