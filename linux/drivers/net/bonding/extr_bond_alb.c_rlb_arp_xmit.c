
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct slave {TYPE_2__* dev; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int rlb_update_delay_counter; } ;
struct bonding {int dev; TYPE_1__ alb_info; } ;
struct arp_pkt {scalar_t__ op_code; int ip_src; int mac_src; } ;
struct TYPE_4__ {char* name; int addr_len; int dev_addr; } ;


 int ARPOP_REPLY ;
 int ARPOP_REQUEST ;
 int RLB_UPDATE_DELAY ;
 struct arp_pkt* arp_pkt (struct sk_buff*) ;
 int bond_hw_addr_copy (int ,int ,int ) ;
 int bond_slave_has_mac_rx (struct bonding*,int ) ;
 scalar_t__ htons (int ) ;
 int netdev_dbg (int ,char*,char*) ;
 struct slave* rlb_choose_channel (struct sk_buff*,struct bonding*) ;
 int rlb_req_update_subnet_clients (struct bonding*,int ) ;

__attribute__((used)) static struct slave *rlb_arp_xmit(struct sk_buff *skb, struct bonding *bond)
{
 struct arp_pkt *arp = arp_pkt(skb);
 struct slave *tx_slave = ((void*)0);




 if (!bond_slave_has_mac_rx(bond, arp->mac_src))
  return ((void*)0);

 if (arp->op_code == htons(ARPOP_REPLY)) {

  tx_slave = rlb_choose_channel(skb, bond);
  if (tx_slave)
   bond_hw_addr_copy(arp->mac_src, tx_slave->dev->dev_addr,
       tx_slave->dev->addr_len);
  netdev_dbg(bond->dev, "(slave %s): Server sent ARP Reply packet\n",
      tx_slave ? tx_slave->dev->name : "NULL");
 } else if (arp->op_code == htons(ARPOP_REQUEST)) {





  tx_slave = rlb_choose_channel(skb, bond);




  bond->alb_info.rlb_update_delay_counter = RLB_UPDATE_DELAY;






  rlb_req_update_subnet_clients(bond, arp->ip_src);
  netdev_dbg(bond->dev, "(slave %s): Server sent ARP Request packet\n",
      tx_slave ? tx_slave->dev->name : "NULL");
 }

 return tx_slave;
}
