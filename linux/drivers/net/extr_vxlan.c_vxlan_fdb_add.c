
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ sa_family; } ;
union vxlan_addr {TYPE_4__ sa; } ;
typedef size_t u32 ;
typedef int u16 ;
struct TYPE_5__ {scalar_t__ sa_family; } ;
struct TYPE_6__ {TYPE_1__ sa; } ;
struct TYPE_7__ {TYPE_2__ remote_ip; } ;
struct vxlan_dev {int * hash_lock; TYPE_3__ default_dst; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct ndmsg {int ndm_state; int ndm_flags; } ;
typedef int __be32 ;
typedef int __be16 ;


 int EAFNOSUPPORT ;
 int EINVAL ;
 size_t NDA_DST ;
 int NTF_VXLAN_ADDED_BY_USER ;
 int NUD_PERMANENT ;
 int NUD_REACHABLE ;
 size_t fdb_head_index (struct vxlan_dev*,unsigned char const*,int ) ;
 struct vxlan_dev* netdev_priv (struct net_device*) ;
 int pr_info (char*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int vxlan_fdb_parse (struct nlattr**,struct vxlan_dev*,union vxlan_addr*,int *,int *,int *,size_t*) ;
 int vxlan_fdb_update (struct vxlan_dev*,unsigned char const*,union vxlan_addr*,int,int ,int ,int ,int ,size_t,int,int,struct netlink_ext_ack*) ;

__attribute__((used)) static int vxlan_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
    struct net_device *dev,
    const unsigned char *addr, u16 vid, u16 flags,
    struct netlink_ext_ack *extack)
{
 struct vxlan_dev *vxlan = netdev_priv(dev);

 union vxlan_addr ip;
 __be16 port;
 __be32 src_vni, vni;
 u32 ifindex;
 u32 hash_index;
 int err;

 if (!(ndm->ndm_state & (NUD_PERMANENT|NUD_REACHABLE))) {
  pr_info("RTM_NEWNEIGH with invalid state %#x\n",
   ndm->ndm_state);
  return -EINVAL;
 }

 if (tb[NDA_DST] == ((void*)0))
  return -EINVAL;

 err = vxlan_fdb_parse(tb, vxlan, &ip, &port, &src_vni, &vni, &ifindex);
 if (err)
  return err;

 if (vxlan->default_dst.remote_ip.sa.sa_family != ip.sa.sa_family)
  return -EAFNOSUPPORT;

 hash_index = fdb_head_index(vxlan, addr, src_vni);
 spin_lock_bh(&vxlan->hash_lock[hash_index]);
 err = vxlan_fdb_update(vxlan, addr, &ip, ndm->ndm_state, flags,
          port, src_vni, vni, ifindex,
          ndm->ndm_flags | NTF_VXLAN_ADDED_BY_USER,
          1, extack);
 spin_unlock_bh(&vxlan->hash_lock[hash_index]);

 return err;
}
