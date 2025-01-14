
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct vxlan_rdst {struct net_device* remote_dev; int remote_ifindex; int remote_vni; int remote_ip; } ;
struct TYPE_2__ {scalar_t__ age_interval; int dst_port; } ;
struct vxlan_dev {int net; int age_timer; TYPE_1__ cfg; int * hash_lock; struct vxlan_rdst default_dst; } ;
struct vxlan_config {scalar_t__ age_interval; int remote_ifindex; int vni; int remote_ip; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;


 int NLM_F_APPEND ;
 int NLM_F_CREATE ;
 int NTF_SELF ;
 int NUD_PERMANENT ;
 int NUD_REACHABLE ;
 int __vxlan_fdb_delete (struct vxlan_dev*,int ,int ,int ,int ,int ,int ,int) ;
 int all_zeros_mac ;
 size_t fdb_head_index (struct vxlan_dev*,int ,int ) ;
 int jiffies ;
 int mod_timer (int *,int ) ;
 int netdev_adjacent_change_abort (struct net_device*,struct net_device*,struct net_device*) ;
 int netdev_adjacent_change_commit (struct net_device*,struct net_device*,struct net_device*) ;
 int netdev_adjacent_change_prepare (struct net_device*,struct net_device*,struct net_device*,struct netlink_ext_ack*) ;
 struct vxlan_dev* netdev_priv (struct net_device*) ;
 int netdev_update_lockdep_key (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int vxlan_addr_any (int *) ;
 int vxlan_addr_equal (int *,int *) ;
 int vxlan_config_apply (struct net_device*,struct vxlan_config*,struct net_device*,int ,int) ;
 int vxlan_config_validate (int ,struct vxlan_config*,struct net_device**,struct vxlan_dev*,struct netlink_ext_ack*) ;
 int vxlan_fdb_update (struct vxlan_dev*,int ,int *,int,int,int ,int ,int ,int ,int ,int,struct netlink_ext_ack*) ;
 int vxlan_nl2conf (struct nlattr**,struct nlattr**,struct net_device*,struct vxlan_config*,int,struct netlink_ext_ack*) ;

__attribute__((used)) static int vxlan_changelink(struct net_device *dev, struct nlattr *tb[],
       struct nlattr *data[],
       struct netlink_ext_ack *extack)
{
 struct vxlan_dev *vxlan = netdev_priv(dev);
 struct net_device *lowerdev;
 struct vxlan_config conf;
 struct vxlan_rdst *dst;
 int err;

 dst = &vxlan->default_dst;
 err = vxlan_nl2conf(tb, data, dev, &conf, 1, extack);
 if (err)
  return err;

 err = vxlan_config_validate(vxlan->net, &conf, &lowerdev,
        vxlan, extack);
 if (err)
  return err;

 if (dst->remote_dev == lowerdev)
  lowerdev = ((void*)0);

 err = netdev_adjacent_change_prepare(dst->remote_dev, lowerdev, dev,
          extack);
 if (err)
  return err;


 if (!vxlan_addr_equal(&conf.remote_ip, &dst->remote_ip)) {
  u32 hash_index = fdb_head_index(vxlan, all_zeros_mac, conf.vni);

  spin_lock_bh(&vxlan->hash_lock[hash_index]);
  if (!vxlan_addr_any(&conf.remote_ip)) {
   err = vxlan_fdb_update(vxlan, all_zeros_mac,
            &conf.remote_ip,
            NUD_REACHABLE | NUD_PERMANENT,
            NLM_F_APPEND | NLM_F_CREATE,
            vxlan->cfg.dst_port,
            conf.vni, conf.vni,
            conf.remote_ifindex,
            NTF_SELF, 1, extack);
   if (err) {
    spin_unlock_bh(&vxlan->hash_lock[hash_index]);
    netdev_adjacent_change_abort(dst->remote_dev,
            lowerdev, dev);
    return err;
   }
  }
  if (!vxlan_addr_any(&dst->remote_ip))
   __vxlan_fdb_delete(vxlan, all_zeros_mac,
        dst->remote_ip,
        vxlan->cfg.dst_port,
        dst->remote_vni,
        dst->remote_vni,
        dst->remote_ifindex,
        1);
  spin_unlock_bh(&vxlan->hash_lock[hash_index]);
 }

 if (conf.age_interval != vxlan->cfg.age_interval)
  mod_timer(&vxlan->age_timer, jiffies);

 netdev_adjacent_change_commit(dst->remote_dev, lowerdev, dev);
 if (lowerdev && lowerdev != dst->remote_dev) {
  dst->remote_dev = lowerdev;
  netdev_update_lockdep_key(lowerdev);
 }
 vxlan_config_apply(dev, &conf, lowerdev, vxlan->net, 1);
 return 0;
}
