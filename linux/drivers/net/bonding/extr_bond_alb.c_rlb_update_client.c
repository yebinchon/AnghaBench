
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {TYPE_3__* dev; } ;
struct rlb_client_info {scalar_t__ vlan_id; TYPE_2__* slave; int mac_dst; int ip_src; int ip_dst; } ;
struct TYPE_7__ {int dev_addr; } ;
struct TYPE_6__ {TYPE_3__* dev; TYPE_1__* bond; } ;
struct TYPE_5__ {int dev; } ;


 int ARPOP_REPLY ;
 int ETH_P_8021Q ;
 int ETH_P_ARP ;
 int RLB_ARP_BURST_SIZE ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,scalar_t__) ;
 struct sk_buff* arp_create (int ,int ,int ,TYPE_3__*,int ,int ,int ,int ) ;
 int arp_xmit (struct sk_buff*) ;
 int htons (int ) ;
 int is_valid_ether_addr (int ) ;
 int slave_err (int ,TYPE_3__*,char*) ;

__attribute__((used)) static void rlb_update_client(struct rlb_client_info *client_info)
{
 int i;

 if (!client_info->slave || !is_valid_ether_addr(client_info->mac_dst))
  return;

 for (i = 0; i < RLB_ARP_BURST_SIZE; i++) {
  struct sk_buff *skb;

  skb = arp_create(ARPOP_REPLY, ETH_P_ARP,
     client_info->ip_dst,
     client_info->slave->dev,
     client_info->ip_src,
     client_info->mac_dst,
     client_info->slave->dev->dev_addr,
     client_info->mac_dst);
  if (!skb) {
   slave_err(client_info->slave->bond->dev,
      client_info->slave->dev,
      "failed to create an ARP packet\n");
   continue;
  }

  skb->dev = client_info->slave->dev;

  if (client_info->vlan_id) {
   __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q),
            client_info->vlan_id);
  }

  arp_xmit(skb);
 }
}
