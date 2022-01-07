
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slave {int dev; } ;
struct sk_buff {scalar_t__ protocol; } ;
struct bonding {int dev; } ;
struct arp_pkt {scalar_t__ op_code; } ;
typedef int _arp ;


 int ARPOP_REPLY ;
 int ETH_P_ARP ;
 int RX_HANDLER_ANOTHER ;
 scalar_t__ cpu_to_be16 (int ) ;
 scalar_t__ htons (int ) ;
 int rlb_purge_src_ip (struct bonding*,struct arp_pkt*) ;
 int rlb_update_entry_from_arp (struct bonding*,struct arp_pkt*) ;
 struct arp_pkt* skb_header_pointer (struct sk_buff const*,int ,int,struct arp_pkt*) ;
 int slave_dbg (int ,int ,char*) ;

__attribute__((used)) static int rlb_arp_recv(const struct sk_buff *skb, struct bonding *bond,
   struct slave *slave)
{
 struct arp_pkt *arp, _arp;

 if (skb->protocol != cpu_to_be16(ETH_P_ARP))
  goto out;

 arp = skb_header_pointer(skb, 0, sizeof(_arp), &_arp);
 if (!arp)
  goto out;
 rlb_purge_src_ip(bond, arp);

 if (arp->op_code == htons(ARPOP_REPLY)) {

  rlb_update_entry_from_arp(bond, arp);
  slave_dbg(bond->dev, slave->dev, "Server received an ARP Reply from client\n");
 }
out:
 return RX_HANDLER_ANOTHER;
}
