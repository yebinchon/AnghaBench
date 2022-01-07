
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct slave {int dummy; } ;
struct net_device {int lower_level; scalar_t__ addr_assign_type; int * dev_addr; } ;
struct bonding {TYPE_1__* dev; } ;
struct bond_vlan_tag {int vlan_id; int vlan_proto; } ;
struct alb_walk_data {int strict_match; int * mac_addr; struct slave* slave; struct bonding* bond; } ;
struct TYPE_2__ {int lower_level; } ;


 int BUG () ;
 scalar_t__ IS_ERR_OR_NULL (struct bond_vlan_tag*) ;
 scalar_t__ NET_ADDR_STOLEN ;
 int alb_send_lp_vid (struct slave*,int *,int ,int ) ;
 struct bond_vlan_tag* bond_verify_device_path (TYPE_1__*,struct net_device*,int ) ;
 scalar_t__ is_vlan_dev (struct net_device*) ;
 int kfree (struct bond_vlan_tag*) ;
 scalar_t__ netif_is_macvlan (struct net_device*) ;
 int vlan_dev_vlan_id (struct net_device*) ;
 int vlan_dev_vlan_proto (struct net_device*) ;

__attribute__((used)) static int alb_upper_dev_walk(struct net_device *upper, void *_data)
{
 struct alb_walk_data *data = _data;
 bool strict_match = data->strict_match;
 struct bonding *bond = data->bond;
 struct slave *slave = data->slave;
 u8 *mac_addr = data->mac_addr;
 struct bond_vlan_tag *tags;

 if (is_vlan_dev(upper) &&
     bond->dev->lower_level == upper->lower_level - 1) {
  if (upper->addr_assign_type == NET_ADDR_STOLEN) {
   alb_send_lp_vid(slave, mac_addr,
     vlan_dev_vlan_proto(upper),
     vlan_dev_vlan_id(upper));
  } else {
   alb_send_lp_vid(slave, upper->dev_addr,
     vlan_dev_vlan_proto(upper),
     vlan_dev_vlan_id(upper));
  }
 }




 if (netif_is_macvlan(upper) && !strict_match) {
  tags = bond_verify_device_path(bond->dev, upper, 0);
  if (IS_ERR_OR_NULL(tags))
   BUG();
  alb_send_lp_vid(slave, upper->dev_addr,
    tags[0].vlan_proto, tags[0].vlan_id);
  kfree(tags);
 }

 return 0;
}
