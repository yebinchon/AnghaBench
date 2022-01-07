
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bonding {int * proc_entry; int proc_file_name; struct net_device* dev; } ;
struct bond_net {scalar_t__ proc_dir; } ;


 int IFNAMSIZ ;
 int bond_net_id ;
 int dev_net (struct net_device*) ;
 int memset (int ,int ,int ) ;
 struct bond_net* net_generic (int ,int ) ;
 int remove_proc_entry (int ,scalar_t__) ;

void bond_remove_proc_entry(struct bonding *bond)
{
 struct net_device *bond_dev = bond->dev;
 struct bond_net *bn = net_generic(dev_net(bond_dev), bond_net_id);

 if (bn->proc_dir && bond->proc_entry) {
  remove_proc_entry(bond->proc_file_name, bn->proc_dir);
  memset(bond->proc_file_name, 0, IFNAMSIZ);
  bond->proc_entry = ((void*)0);
 }
}
