
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct slave {int dev; } ;
struct sk_buff {scalar_t__ protocol; } ;
struct net_device {int dummy; } ;
struct iphdr {scalar_t__ protocol; } ;
struct bonding {int slave_cnt; int curr_active_slave; } ;
typedef int netdev_tx_t ;


 int ETH_P_IP ;
 scalar_t__ IPPROTO_IGMP ;
 int NETDEV_TX_OK ;
 int READ_ONCE (int ) ;
 int bond_dev_queue_xmit (struct bonding*,struct sk_buff*,int ) ;
 int bond_rr_gen_slave_id (struct bonding*) ;
 int bond_tx_drop (struct net_device*,struct sk_buff*) ;
 int bond_xmit_slave_id (struct bonding*,struct sk_buff*,int) ;
 scalar_t__ htons (int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 struct bonding* netdev_priv (struct net_device*) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 struct slave* rcu_dereference (int ) ;
 int skb_network_offset (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static netdev_tx_t bond_xmit_roundrobin(struct sk_buff *skb,
     struct net_device *bond_dev)
{
 struct bonding *bond = netdev_priv(bond_dev);
 struct slave *slave;
 int slave_cnt;
 u32 slave_id;







 if (skb->protocol == htons(ETH_P_IP)) {
  int noff = skb_network_offset(skb);
  struct iphdr *iph;

  if (unlikely(!pskb_may_pull(skb, noff + sizeof(*iph))))
   goto non_igmp;

  iph = ip_hdr(skb);
  if (iph->protocol == IPPROTO_IGMP) {
   slave = rcu_dereference(bond->curr_active_slave);
   if (slave)
    bond_dev_queue_xmit(bond, skb, slave->dev);
   else
    bond_xmit_slave_id(bond, skb, 0);
   return NETDEV_TX_OK;
  }
 }

non_igmp:
 slave_cnt = READ_ONCE(bond->slave_cnt);
 if (likely(slave_cnt)) {
  slave_id = bond_rr_gen_slave_id(bond);
  bond_xmit_slave_id(bond, skb, slave_id % slave_cnt);
 } else {
  bond_tx_drop(bond_dev, skb);
 }
 return NETDEV_TX_OK;
}
