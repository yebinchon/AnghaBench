
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slave {int dummy; } ;
struct sk_buff {scalar_t__ pkt_type; } ;
struct bonding {int dummy; } ;


 scalar_t__ BOND_MODE (struct bonding*) ;
 scalar_t__ BOND_MODE_ALB ;
 scalar_t__ PACKET_BROADCAST ;
 scalar_t__ PACKET_MULTICAST ;
 scalar_t__ bond_is_slave_inactive (struct slave*) ;

__attribute__((used)) static bool bond_should_deliver_exact_match(struct sk_buff *skb,
         struct slave *slave,
         struct bonding *bond)
{
 if (bond_is_slave_inactive(slave)) {
  if (BOND_MODE(bond) == BOND_MODE_ALB &&
      skb->pkt_type != PACKET_BROADCAST &&
      skb->pkt_type != PACKET_MULTICAST)
   return 0;
  return 1;
 }
 return 0;
}
