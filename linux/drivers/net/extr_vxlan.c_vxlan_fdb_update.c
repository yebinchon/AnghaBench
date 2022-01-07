
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


 int EEXIST ;
 int ENOENT ;
 int NLM_F_CREATE ;
 int NLM_F_EXCL ;
 struct vxlan_fdb* __vxlan_find_mac (struct vxlan_dev*,int const*,int ) ;
 int netdev_dbg (int ,char*,int const*) ;
 int vxlan_fdb_update_create (struct vxlan_dev*,int const*,union vxlan_addr*,int,int,int ,int ,int ,int ,int,int,struct netlink_ext_ack*) ;
 int vxlan_fdb_update_existing (struct vxlan_dev*,union vxlan_addr*,int,int,int ,int ,int ,int,struct vxlan_fdb*,int,struct netlink_ext_ack*) ;

__attribute__((used)) static int vxlan_fdb_update(struct vxlan_dev *vxlan,
       const u8 *mac, union vxlan_addr *ip,
       __u16 state, __u16 flags,
       __be16 port, __be32 src_vni, __be32 vni,
       __u32 ifindex, __u16 ndm_flags,
       bool swdev_notify,
       struct netlink_ext_ack *extack)
{
 struct vxlan_fdb *f;

 f = __vxlan_find_mac(vxlan, mac, src_vni);
 if (f) {
  if (flags & NLM_F_EXCL) {
   netdev_dbg(vxlan->dev,
       "lost race to create %pM\n", mac);
   return -EEXIST;
  }

  return vxlan_fdb_update_existing(vxlan, ip, state, flags, port,
       vni, ifindex, ndm_flags, f,
       swdev_notify, extack);
 } else {
  if (!(flags & NLM_F_CREATE))
   return -ENOENT;

  return vxlan_fdb_update_create(vxlan, mac, ip, state, flags,
            port, src_vni, vni, ifindex,
            ndm_flags, swdev_notify, extack);
 }
}
