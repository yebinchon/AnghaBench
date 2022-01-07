
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct flow_cls_offload {int cookie; } ;
struct ch_tc_flower_entry {int node; int fs; int filter_id; } ;
struct adapter {int flower_ht_params; int flower_tbl; } ;


 int ENOENT ;
 struct ch_tc_flower_entry* ch_flower_lookup (struct adapter*,int ) ;
 int cxgb4_del_filter (struct net_device*,int ,int *) ;
 int kfree_rcu (struct ch_tc_flower_entry*,int ) ;
 struct adapter* netdev2adap (struct net_device*) ;
 int netdev_err (struct net_device*,char*) ;
 int rcu ;
 int rhashtable_remove_fast (int *,int *,int ) ;

int cxgb4_tc_flower_destroy(struct net_device *dev,
       struct flow_cls_offload *cls)
{
 struct adapter *adap = netdev2adap(dev);
 struct ch_tc_flower_entry *ch_flower;
 int ret;

 ch_flower = ch_flower_lookup(adap, cls->cookie);
 if (!ch_flower)
  return -ENOENT;

 ret = cxgb4_del_filter(dev, ch_flower->filter_id, &ch_flower->fs);
 if (ret)
  goto err;

 ret = rhashtable_remove_fast(&adap->flower_tbl, &ch_flower->node,
         adap->flower_ht_params);
 if (ret) {
  netdev_err(dev, "Flow remove from rhashtable failed");
  goto err;
 }
 kfree_rcu(ch_flower, rcu);

err:
 return ret;
}
