
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int duplex; int speed; scalar_t__ linkup; } ;
struct team_port {int changed; TYPE_1__ state; scalar_t__ removed; TYPE_2__* dev; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_4__ {int ifindex; } ;


 int EMSGSIZE ;
 int TEAM_ATTR_ITEM_PORT ;
 int TEAM_ATTR_PORT_CHANGED ;
 int TEAM_ATTR_PORT_DUPLEX ;
 int TEAM_ATTR_PORT_IFINDEX ;
 int TEAM_ATTR_PORT_LINKUP ;
 int TEAM_ATTR_PORT_REMOVED ;
 int TEAM_ATTR_PORT_SPEED ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_flag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int team_nl_fill_one_port_get(struct sk_buff *skb,
         struct team_port *port)
{
 struct nlattr *port_item;

 port_item = nla_nest_start_noflag(skb, TEAM_ATTR_ITEM_PORT);
 if (!port_item)
  goto nest_cancel;
 if (nla_put_u32(skb, TEAM_ATTR_PORT_IFINDEX, port->dev->ifindex))
  goto nest_cancel;
 if (port->changed) {
  if (nla_put_flag(skb, TEAM_ATTR_PORT_CHANGED))
   goto nest_cancel;
  port->changed = 0;
 }
 if ((port->removed &&
      nla_put_flag(skb, TEAM_ATTR_PORT_REMOVED)) ||
     (port->state.linkup &&
      nla_put_flag(skb, TEAM_ATTR_PORT_LINKUP)) ||
     nla_put_u32(skb, TEAM_ATTR_PORT_SPEED, port->state.speed) ||
     nla_put_u8(skb, TEAM_ATTR_PORT_DUPLEX, port->state.duplex))
  goto nest_cancel;
 nla_nest_end(skb, port_item);
 return 0;

nest_cancel:
 nla_nest_cancel(skb, port_item);
 return -EMSGSIZE;
}
