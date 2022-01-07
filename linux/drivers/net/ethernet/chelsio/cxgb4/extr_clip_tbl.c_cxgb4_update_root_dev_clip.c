
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int ETH_P_8021Q ;
 int VLAN_N_VID ;
 struct net_device* __vlan_find_dev_deep_rcu (struct net_device*,int ,int) ;
 int cxgb4_update_dev_clip (struct net_device*,struct net_device*) ;
 int htons (int ) ;
 struct net_device* netdev_master_upper_dev_get_rcu (struct net_device*) ;

int cxgb4_update_root_dev_clip(struct net_device *dev)
{
 struct net_device *root_dev = ((void*)0);
 int i, ret = 0;


 ret = cxgb4_update_dev_clip(dev, dev);
 if (ret)
  return ret;


 root_dev = netdev_master_upper_dev_get_rcu(dev);
 if (root_dev) {
  ret = cxgb4_update_dev_clip(root_dev, dev);
  if (ret)
   return ret;
 }

 for (i = 0; i < VLAN_N_VID; i++) {
  root_dev = __vlan_find_dev_deep_rcu(dev, htons(ETH_P_8021Q), i);
  if (!root_dev)
   continue;

  ret = cxgb4_update_dev_clip(root_dev, dev);
  if (ret)
   break;
 }

 return ret;
}
