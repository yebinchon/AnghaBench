
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team {int dummy; } ;
struct sk_buff {int dummy; } ;
struct genl_info {int snd_seq; int snd_portid; } ;


 int EINVAL ;
 int NLM_F_ACK ;
 int team_nl_send_port_list_get (struct team*,int ,int ,int ,int ,int *) ;
 int team_nl_send_unicast ;
 struct team* team_nl_team_get (struct genl_info*) ;
 int team_nl_team_put (struct team*) ;

__attribute__((used)) static int team_nl_cmd_port_list_get(struct sk_buff *skb,
         struct genl_info *info)
{
 struct team *team;
 int err;

 team = team_nl_team_get(info);
 if (!team)
  return -EINVAL;

 err = team_nl_send_port_list_get(team, info->snd_portid, info->snd_seq,
      NLM_F_ACK, team_nl_send_unicast, ((void*)0));

 team_nl_team_put(team);

 return err;
}
