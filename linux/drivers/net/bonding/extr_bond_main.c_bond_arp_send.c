
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slave {TYPE_1__* bond; struct net_device* dev; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dev_addr; } ;
struct bond_vlan_tag {int vlan_id; int vlan_proto; } ;
typedef int __be32 ;
struct TYPE_2__ {struct net_device* dev; } ;


 int ETH_P_ARP ;
 int VLAN_N_VID ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int ) ;
 struct sk_buff* arp_create (int,int ,int ,struct net_device*,int ,int *,int ,int *) ;
 int arp_xmit (struct sk_buff*) ;
 int net_err_ratelimited (char*) ;
 int ntohs (int ) ;
 int slave_dbg (struct net_device*,struct net_device*,char*,int,int ,...) ;
 struct sk_buff* vlan_insert_tag_set_proto (struct sk_buff*,int ,int ) ;

__attribute__((used)) static void bond_arp_send(struct slave *slave, int arp_op, __be32 dest_ip,
     __be32 src_ip, struct bond_vlan_tag *tags)
{
 struct sk_buff *skb;
 struct bond_vlan_tag *outer_tag = tags;
 struct net_device *slave_dev = slave->dev;
 struct net_device *bond_dev = slave->bond->dev;

 slave_dbg(bond_dev, slave_dev, "arp %d on slave: dst %pI4 src %pI4\n",
    arp_op, &dest_ip, &src_ip);

 skb = arp_create(arp_op, ETH_P_ARP, dest_ip, slave_dev, src_ip,
    ((void*)0), slave_dev->dev_addr, ((void*)0));

 if (!skb) {
  net_err_ratelimited("ARP packet allocation failed\n");
  return;
 }

 if (!tags || tags->vlan_proto == VLAN_N_VID)
  goto xmit;

 tags++;


 while (tags->vlan_proto != VLAN_N_VID) {
  if (!tags->vlan_id) {
   tags++;
   continue;
  }

  slave_dbg(bond_dev, slave_dev, "inner tag: proto %X vid %X\n",
     ntohs(outer_tag->vlan_proto), tags->vlan_id);
  skb = vlan_insert_tag_set_proto(skb, tags->vlan_proto,
      tags->vlan_id);
  if (!skb) {
   net_err_ratelimited("failed to insert inner VLAN tag\n");
   return;
  }

  tags++;
 }

 if (outer_tag->vlan_id) {
  slave_dbg(bond_dev, slave_dev, "outer tag: proto %X vid %X\n",
     ntohs(outer_tag->vlan_proto), outer_tag->vlan_id);
  __vlan_hwaccel_put_tag(skb, outer_tag->vlan_proto,
           outer_tag->vlan_id);
 }

xmit:
 arp_xmit(skb);
}
