
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union vxlan_addr {int dummy; } vxlan_addr ;
typedef int u8 ;
struct vxlan_fdb {int dummy; } ;
struct vxlan_dev {int dev; } ;
struct netlink_ext_ack {int dummy; } ;
typedef int __u32 ;
typedef int __u16 ;
typedef int __be32 ;
typedef int __be16 ;


 int EOPNOTSUPP ;
 int NLM_F_REPLACE ;
 int NTF_USE ;
 int RTM_NEWNEIGH ;
 int first_remote_rtnl (struct vxlan_fdb*) ;
 scalar_t__ is_multicast_ether_addr (int const*) ;
 scalar_t__ is_zero_ether_addr (int const*) ;
 int netdev_dbg (int ,char*,int const*,union vxlan_addr*) ;
 int vxlan_fdb_create (struct vxlan_dev*,int const*,union vxlan_addr*,int,int ,int ,int ,int ,int,struct vxlan_fdb**) ;
 int vxlan_fdb_destroy (struct vxlan_dev*,struct vxlan_fdb*,int,int) ;
 int vxlan_fdb_insert (struct vxlan_dev*,int const*,int ,struct vxlan_fdb*) ;
 int vxlan_fdb_notify (struct vxlan_dev*,struct vxlan_fdb*,int ,int ,int,struct netlink_ext_ack*) ;

__attribute__((used)) static int vxlan_fdb_update_create(struct vxlan_dev *vxlan,
       const u8 *mac, union vxlan_addr *ip,
       __u16 state, __u16 flags,
       __be16 port, __be32 src_vni, __be32 vni,
       __u32 ifindex, __u16 ndm_flags,
       bool swdev_notify,
       struct netlink_ext_ack *extack)
{
 __u16 fdb_flags = (ndm_flags & ~NTF_USE);
 struct vxlan_fdb *f;
 int rc;


 if ((flags & NLM_F_REPLACE) &&
     (is_multicast_ether_addr(mac) || is_zero_ether_addr(mac)))
  return -EOPNOTSUPP;

 netdev_dbg(vxlan->dev, "add %pM -> %pIS\n", mac, ip);
 rc = vxlan_fdb_create(vxlan, mac, ip, state, port, src_vni,
         vni, ifindex, fdb_flags, &f);
 if (rc < 0)
  return rc;

 vxlan_fdb_insert(vxlan, mac, src_vni, f);
 rc = vxlan_fdb_notify(vxlan, f, first_remote_rtnl(f), RTM_NEWNEIGH,
         swdev_notify, extack);
 if (rc)
  goto err_notify;

 return 0;

err_notify:
 vxlan_fdb_destroy(vxlan, f, 0, 0);
 return rc;
}
