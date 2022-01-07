
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct team {int dev; } ;
struct sk_buff {int dummy; } ;


 int GFP_KERNEL ;
 int dev_net (int ) ;
 int genlmsg_multicast_netns (int *,int ,struct sk_buff*,int ,int ,int ) ;
 int team_nl_family ;

__attribute__((used)) static int team_nl_send_multicast(struct sk_buff *skb,
      struct team *team, u32 portid)
{
 return genlmsg_multicast_netns(&team_nl_family, dev_net(team->dev),
           skb, 0, 0, GFP_KERNEL);
}
