
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct slave {int bond; int queue_id; int perm_hwaddr; int link_failure_count; int link; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int port_state; } ;
struct port {TYPE_1__ partner_oper; int actor_oper_port_state; struct aggregator* aggregator; } ;
struct net_device {int addr_len; } ;
struct aggregator {int aggregator_identifier; } ;
struct TYPE_4__ {struct port port; } ;


 scalar_t__ BOND_MODE (int ) ;
 scalar_t__ BOND_MODE_8023AD ;
 int EMSGSIZE ;
 int IFLA_BOND_SLAVE_AD_ACTOR_OPER_PORT_STATE ;
 int IFLA_BOND_SLAVE_AD_AGGREGATOR_ID ;
 int IFLA_BOND_SLAVE_AD_PARTNER_OPER_PORT_STATE ;
 int IFLA_BOND_SLAVE_LINK_FAILURE_COUNT ;
 int IFLA_BOND_SLAVE_MII_STATUS ;
 int IFLA_BOND_SLAVE_PERM_HWADDR ;
 int IFLA_BOND_SLAVE_QUEUE_ID ;
 int IFLA_BOND_SLAVE_STATE ;
 TYPE_2__* SLAVE_AD_INFO (struct slave*) ;
 struct slave* bond_slave_get_rtnl (struct net_device const*) ;
 int bond_slave_state (struct slave*) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int bond_fill_slave_info(struct sk_buff *skb,
    const struct net_device *bond_dev,
    const struct net_device *slave_dev)
{
 struct slave *slave = bond_slave_get_rtnl(slave_dev);

 if (nla_put_u8(skb, IFLA_BOND_SLAVE_STATE, bond_slave_state(slave)))
  goto nla_put_failure;

 if (nla_put_u8(skb, IFLA_BOND_SLAVE_MII_STATUS, slave->link))
  goto nla_put_failure;

 if (nla_put_u32(skb, IFLA_BOND_SLAVE_LINK_FAILURE_COUNT,
   slave->link_failure_count))
  goto nla_put_failure;

 if (nla_put(skb, IFLA_BOND_SLAVE_PERM_HWADDR,
      slave_dev->addr_len, slave->perm_hwaddr))
  goto nla_put_failure;

 if (nla_put_u16(skb, IFLA_BOND_SLAVE_QUEUE_ID, slave->queue_id))
  goto nla_put_failure;

 if (BOND_MODE(slave->bond) == BOND_MODE_8023AD) {
  const struct aggregator *agg;
  const struct port *ad_port;

  ad_port = &SLAVE_AD_INFO(slave)->port;
  agg = SLAVE_AD_INFO(slave)->port.aggregator;
  if (agg) {
   if (nla_put_u16(skb, IFLA_BOND_SLAVE_AD_AGGREGATOR_ID,
     agg->aggregator_identifier))
    goto nla_put_failure;
   if (nla_put_u8(skb,
           IFLA_BOND_SLAVE_AD_ACTOR_OPER_PORT_STATE,
           ad_port->actor_oper_port_state))
    goto nla_put_failure;
   if (nla_put_u16(skb,
     IFLA_BOND_SLAVE_AD_PARTNER_OPER_PORT_STATE,
     ad_port->partner_oper.port_state))
    goto nla_put_failure;
  }
 }

 return 0;

nla_put_failure:
 return -EMSGSIZE;
}
