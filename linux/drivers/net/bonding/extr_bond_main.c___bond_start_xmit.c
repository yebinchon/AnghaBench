
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct bonding {int dummy; } ;
typedef int netdev_tx_t ;


 int BOND_MODE (struct bonding*) ;







 int NETDEV_TX_OK ;
 int WARN_ON_ONCE (int) ;
 int bond_3ad_xor_xmit (struct sk_buff*,struct net_device*) ;
 int bond_alb_xmit (struct sk_buff*,struct net_device*) ;
 scalar_t__ bond_should_override_tx_queue (struct bonding*) ;
 int bond_slave_override (struct bonding*,struct sk_buff*) ;
 int bond_tlb_xmit (struct sk_buff*,struct net_device*) ;
 int bond_tx_drop (struct net_device*,struct sk_buff*) ;
 int bond_xmit_activebackup (struct sk_buff*,struct net_device*) ;
 int bond_xmit_broadcast (struct sk_buff*,struct net_device*) ;
 int bond_xmit_roundrobin (struct sk_buff*,struct net_device*) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct bonding* netdev_priv (struct net_device*) ;

__attribute__((used)) static netdev_tx_t __bond_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct bonding *bond = netdev_priv(dev);

 if (bond_should_override_tx_queue(bond) &&
     !bond_slave_override(bond, skb))
  return NETDEV_TX_OK;

 switch (BOND_MODE(bond)) {
 case 130:
  return bond_xmit_roundrobin(skb, dev);
 case 133:
  return bond_xmit_activebackup(skb, dev);
 case 134:
 case 128:
  return bond_3ad_xor_xmit(skb, dev);
 case 131:
  return bond_xmit_broadcast(skb, dev);
 case 132:
  return bond_alb_xmit(skb, dev);
 case 129:
  return bond_tlb_xmit(skb, dev);
 default:

  netdev_err(dev, "Unknown bonding mode %d\n", BOND_MODE(bond));
  WARN_ON_ONCE(1);
  bond_tx_drop(dev, skb);
  return NETDEV_TX_OK;
 }
}
