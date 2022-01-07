
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct team {int dev; } ;
struct sk_buff {int dummy; } ;


 int dev_net (int ) ;
 int genlmsg_unicast (int ,struct sk_buff*,int ) ;

__attribute__((used)) static int team_nl_send_unicast(struct sk_buff *skb, struct team *team, u32 portid)
{
 return genlmsg_unicast(dev_net(team->dev), skb, portid);
}
