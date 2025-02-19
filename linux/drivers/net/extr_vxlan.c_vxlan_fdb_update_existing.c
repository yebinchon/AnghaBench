
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union vxlan_addr {int dummy; } vxlan_addr ;
struct vxlan_rdst {int rcu; int list; } ;
struct vxlan_fdb {int flags; scalar_t__ state; void* used; int eth_addr; void* updated; } ;
struct vxlan_dev {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
typedef int __u32 ;
typedef scalar_t__ __u16 ;
typedef int __be32 ;
typedef int __be16 ;


 int EOPNOTSUPP ;
 scalar_t__ NLM_F_APPEND ;
 scalar_t__ NLM_F_REPLACE ;
 scalar_t__ NTF_EXT_LEARNED ;
 scalar_t__ NTF_USE ;
 int NTF_VXLAN_ADDED_BY_USER ;
 int RTM_NEWNEIGH ;
 int call_rcu (int *,int ) ;
 struct vxlan_rdst* first_remote_rtnl (struct vxlan_fdb*) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 scalar_t__ is_zero_ether_addr (int ) ;
 void* jiffies ;
 int list_del_rcu (int *) ;
 int vxlan_dst_free ;
 int vxlan_fdb_append (struct vxlan_fdb*,union vxlan_addr*,int ,int ,int ,struct vxlan_rdst**) ;
 int vxlan_fdb_notify (struct vxlan_dev*,struct vxlan_fdb*,struct vxlan_rdst*,int ,int,struct netlink_ext_ack*) ;
 int vxlan_fdb_replace (struct vxlan_fdb*,union vxlan_addr*,int ,int ,int ,struct vxlan_rdst*) ;

__attribute__((used)) static int vxlan_fdb_update_existing(struct vxlan_dev *vxlan,
         union vxlan_addr *ip,
         __u16 state, __u16 flags,
         __be16 port, __be32 vni,
         __u32 ifindex, __u16 ndm_flags,
         struct vxlan_fdb *f,
         bool swdev_notify,
         struct netlink_ext_ack *extack)
{
 __u16 fdb_flags = (ndm_flags & ~NTF_USE);
 struct vxlan_rdst *rd = ((void*)0);
 struct vxlan_rdst oldrd;
 int notify = 0;
 int rc = 0;
 int err;




 if (!(fdb_flags & NTF_EXT_LEARNED) ||
     !(f->flags & NTF_VXLAN_ADDED_BY_USER)) {
  if (f->state != state) {
   f->state = state;
   f->updated = jiffies;
   notify = 1;
  }
  if (f->flags != fdb_flags) {
   f->flags = fdb_flags;
   f->updated = jiffies;
   notify = 1;
  }
 }

 if ((flags & NLM_F_REPLACE)) {

  if (!(is_multicast_ether_addr(f->eth_addr) ||
        is_zero_ether_addr(f->eth_addr))) {
   rc = vxlan_fdb_replace(f, ip, port, vni,
            ifindex, &oldrd);
   notify |= rc;
  } else {
   return -EOPNOTSUPP;
  }
 }
 if ((flags & NLM_F_APPEND) &&
     (is_multicast_ether_addr(f->eth_addr) ||
      is_zero_ether_addr(f->eth_addr))) {
  rc = vxlan_fdb_append(f, ip, port, vni, ifindex, &rd);

  if (rc < 0)
   return rc;
  notify |= rc;
 }

 if (ndm_flags & NTF_USE)
  f->used = jiffies;

 if (notify) {
  if (rd == ((void*)0))
   rd = first_remote_rtnl(f);

  err = vxlan_fdb_notify(vxlan, f, rd, RTM_NEWNEIGH,
           swdev_notify, extack);
  if (err)
   goto err_notify;
 }

 return 0;

err_notify:
 if ((flags & NLM_F_REPLACE) && rc)
  *rd = oldrd;
 else if ((flags & NLM_F_APPEND) && rc) {
  list_del_rcu(&rd->list);
  call_rcu(&rd->rcu, vxlan_dst_free);
 }
 return err;
}
