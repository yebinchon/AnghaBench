
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;
struct bonding {int proc_file_name; int * proc_entry; struct net_device* dev; } ;
struct bond_net {scalar_t__ proc_dir; } ;


 int DRV_NAME ;
 int IFNAMSIZ ;
 int bond_info_seq_ops ;
 int bond_net_id ;
 int dev_net (struct net_device*) ;
 int memcpy (int ,int ,int ) ;
 struct bond_net* net_generic (int ,int ) ;
 int netdev_warn (struct net_device*,char*,int ,int ) ;
 int * proc_create_seq_data (int ,int,scalar_t__,int *,struct bonding*) ;

void bond_create_proc_entry(struct bonding *bond)
{
 struct net_device *bond_dev = bond->dev;
 struct bond_net *bn = net_generic(dev_net(bond_dev), bond_net_id);

 if (bn->proc_dir) {
  bond->proc_entry = proc_create_seq_data(bond_dev->name, 0444,
    bn->proc_dir, &bond_info_seq_ops, bond);
  if (bond->proc_entry == ((void*)0))
   netdev_warn(bond_dev, "Cannot create /proc/net/%s/%s\n",
        DRV_NAME, bond_dev->name);
  else
   memcpy(bond->proc_file_name, bond_dev->name, IFNAMSIZ);
 }
}
