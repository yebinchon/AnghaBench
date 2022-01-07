
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * arp_targets; } ;
struct bonding {int dev; TYPE_1__ params; } ;
typedef int __be32 ;


 int EINVAL ;
 int _bond_options_arp_ip_target_set (struct bonding*,int,int ,int ) ;
 int bond_get_targets_ip (int *,int ) ;
 int bond_is_ip_target_ok (int ) ;
 int jiffies ;
 int netdev_dbg (int ,char*,int *) ;
 int netdev_err (int ,char*,...) ;

__attribute__((used)) static int _bond_option_arp_ip_target_add(struct bonding *bond, __be32 target)
{
 __be32 *targets = bond->params.arp_targets;
 int ind;

 if (!bond_is_ip_target_ok(target)) {
  netdev_err(bond->dev, "invalid ARP target %pI4 specified for addition\n",
      &target);
  return -EINVAL;
 }

 if (bond_get_targets_ip(targets, target) != -1) {
  netdev_err(bond->dev, "ARP target %pI4 is already present\n",
      &target);
  return -EINVAL;
 }

 ind = bond_get_targets_ip(targets, 0);
 if (ind == -1) {
  netdev_err(bond->dev, "ARP target table is full!\n");
  return -EINVAL;
 }

 netdev_dbg(bond->dev, "Adding ARP target %pI4\n", &target);

 _bond_options_arp_ip_target_set(bond, ind, target, jiffies);

 return 0;
}
