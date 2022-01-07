
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int sa_family; } ;
struct TYPE_10__ {TYPE_1__ sa; } ;
struct vxlan_rdst {scalar_t__ remote_port; scalar_t__ remote_vni; scalar_t__ remote_ifindex; TYPE_4__ remote_ip; scalar_t__ offloaded; } ;
struct nda_cacheinfo {scalar_t__ ndm_refcnt; void* ndm_updated; scalar_t__ ndm_confirmed; void* ndm_used; } ;
struct vxlan_fdb {scalar_t__ vni; scalar_t__ updated; scalar_t__ used; struct nda_cacheinfo eth_addr; int flags; int state; } ;
struct TYPE_9__ {scalar_t__ dst_port; int flags; } ;
struct TYPE_8__ {scalar_t__ remote_vni; } ;
struct vxlan_dev {TYPE_3__ cfg; TYPE_2__ default_dst; int net; TYPE_6__* dev; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct ndmsg {int ndm_type; int ndm_flags; int ndm_ifindex; int ndm_state; int ndm_family; } ;
typedef int ci ;
struct TYPE_11__ {int ifindex; } ;


 int AF_BRIDGE ;
 int AF_INET ;
 int EMSGSIZE ;
 int ETH_ALEN ;
 int NDA_CACHEINFO ;
 int NDA_DST ;
 int NDA_IFINDEX ;
 int NDA_LINK_NETNSID ;
 int NDA_LLADDR ;
 int NDA_PORT ;
 int NDA_SRC_VNI ;
 int NDA_VNI ;
 int NTF_OFFLOADED ;
 int RTM_GETNEIGH ;
 int RTN_UNICAST ;
 int VXLAN_F_COLLECT_METADATA ;
 scalar_t__ be32_to_cpu (scalar_t__) ;
 int dev_net (TYPE_6__*) ;
 int is_zero_ether_addr (struct nda_cacheinfo) ;
 unsigned long jiffies ;
 void* jiffies_to_clock_t (scalar_t__) ;
 int memset (struct ndmsg*,int ,int) ;
 int net_eq (int ,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct nda_cacheinfo*) ;
 scalar_t__ nla_put_be16 (struct sk_buff*,int ,scalar_t__) ;
 scalar_t__ nla_put_s32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,scalar_t__) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct ndmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int,int,unsigned int) ;
 int peernet2id (int ,int ) ;
 int vxlan_addr_any (TYPE_4__*) ;
 scalar_t__ vxlan_nla_put_addr (struct sk_buff*,int ,TYPE_4__*) ;

__attribute__((used)) static int vxlan_fdb_info(struct sk_buff *skb, struct vxlan_dev *vxlan,
     const struct vxlan_fdb *fdb,
     u32 portid, u32 seq, int type, unsigned int flags,
     const struct vxlan_rdst *rdst)
{
 unsigned long now = jiffies;
 struct nda_cacheinfo ci;
 struct nlmsghdr *nlh;
 struct ndmsg *ndm;
 bool send_ip, send_eth;

 nlh = nlmsg_put(skb, portid, seq, type, sizeof(*ndm), flags);
 if (nlh == ((void*)0))
  return -EMSGSIZE;

 ndm = nlmsg_data(nlh);
 memset(ndm, 0, sizeof(*ndm));

 send_eth = send_ip = 1;

 if (type == RTM_GETNEIGH) {
  send_ip = !vxlan_addr_any(&rdst->remote_ip);
  send_eth = !is_zero_ether_addr(fdb->eth_addr);
  ndm->ndm_family = send_ip ? rdst->remote_ip.sa.sa_family : AF_INET;
 } else
  ndm->ndm_family = AF_BRIDGE;
 ndm->ndm_state = fdb->state;
 ndm->ndm_ifindex = vxlan->dev->ifindex;
 ndm->ndm_flags = fdb->flags;
 if (rdst->offloaded)
  ndm->ndm_flags |= NTF_OFFLOADED;
 ndm->ndm_type = RTN_UNICAST;

 if (!net_eq(dev_net(vxlan->dev), vxlan->net) &&
     nla_put_s32(skb, NDA_LINK_NETNSID,
   peernet2id(dev_net(vxlan->dev), vxlan->net)))
  goto nla_put_failure;

 if (send_eth && nla_put(skb, NDA_LLADDR, ETH_ALEN, &fdb->eth_addr))
  goto nla_put_failure;

 if (send_ip && vxlan_nla_put_addr(skb, NDA_DST, &rdst->remote_ip))
  goto nla_put_failure;

 if (rdst->remote_port && rdst->remote_port != vxlan->cfg.dst_port &&
     nla_put_be16(skb, NDA_PORT, rdst->remote_port))
  goto nla_put_failure;
 if (rdst->remote_vni != vxlan->default_dst.remote_vni &&
     nla_put_u32(skb, NDA_VNI, be32_to_cpu(rdst->remote_vni)))
  goto nla_put_failure;
 if ((vxlan->cfg.flags & VXLAN_F_COLLECT_METADATA) && fdb->vni &&
     nla_put_u32(skb, NDA_SRC_VNI,
   be32_to_cpu(fdb->vni)))
  goto nla_put_failure;
 if (rdst->remote_ifindex &&
     nla_put_u32(skb, NDA_IFINDEX, rdst->remote_ifindex))
  goto nla_put_failure;

 ci.ndm_used = jiffies_to_clock_t(now - fdb->used);
 ci.ndm_confirmed = 0;
 ci.ndm_updated = jiffies_to_clock_t(now - fdb->updated);
 ci.ndm_refcnt = 0;

 if (nla_put(skb, NDA_CACHEINFO, sizeof(ci), &ci))
  goto nla_put_failure;

 nlmsg_end(skb, nlh);
 return 0;

nla_put_failure:
 nlmsg_cancel(skb, nlh);
 return -EMSGSIZE;
}
