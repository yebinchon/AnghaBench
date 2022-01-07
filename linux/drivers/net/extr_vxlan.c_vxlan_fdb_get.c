
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct vxlan_fdb {int dummy; } ;
struct TYPE_2__ {int remote_vni; } ;
struct vxlan_dev {TYPE_1__ default_dst; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
typedef int __be32 ;


 int ENOENT ;
 size_t NDA_VNI ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int RTM_NEWNEIGH ;
 struct vxlan_fdb* __vxlan_find_mac (struct vxlan_dev*,unsigned char const*,int ) ;
 int cpu_to_be32 (int ) ;
 int first_remote_rcu (struct vxlan_fdb*) ;
 struct vxlan_dev* netdev_priv (struct net_device*) ;
 int nla_get_u32 (struct nlattr*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int vxlan_fdb_info (struct sk_buff*,struct vxlan_dev*,struct vxlan_fdb*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int vxlan_fdb_get(struct sk_buff *skb,
    struct nlattr *tb[],
    struct net_device *dev,
    const unsigned char *addr,
    u16 vid, u32 portid, u32 seq,
    struct netlink_ext_ack *extack)
{
 struct vxlan_dev *vxlan = netdev_priv(dev);
 struct vxlan_fdb *f;
 __be32 vni;
 int err;

 if (tb[NDA_VNI])
  vni = cpu_to_be32(nla_get_u32(tb[NDA_VNI]));
 else
  vni = vxlan->default_dst.remote_vni;

 rcu_read_lock();

 f = __vxlan_find_mac(vxlan, addr, vni);
 if (!f) {
  NL_SET_ERR_MSG(extack, "Fdb entry not found");
  err = -ENOENT;
  goto errout;
 }

 err = vxlan_fdb_info(skb, vxlan, f, portid, seq,
        RTM_NEWNEIGH, 0, first_remote_rcu(f));
errout:
 rcu_read_unlock();
 return err;
}
