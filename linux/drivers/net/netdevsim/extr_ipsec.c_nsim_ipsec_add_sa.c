
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_8__ {int flags; size_t offload_handle; struct net_device* dev; } ;
struct nsim_sa {int used; int crypt; int rx; int * ipaddr; int salt; int key; struct xfrm_state* xs; } ;
struct TYPE_6__ {struct nsim_sa a4; struct nsim_sa a6; } ;
struct TYPE_7__ {int proto; TYPE_2__ daddr; } ;
struct TYPE_5__ {scalar_t__ family; } ;
struct xfrm_state {TYPE_4__ xso; TYPE_3__ id; TYPE_1__ props; scalar_t__ aead; scalar_t__ ealg; scalar_t__ calg; } ;
struct nsim_ipsec {int count; int * sa; } ;
struct netdevsim {struct nsim_ipsec ipsec; } ;
struct net_device {int dummy; } ;
typedef int sa ;


 scalar_t__ AF_INET6 ;
 int EINVAL ;
 int IPPROTO_AH ;
 int IPPROTO_ESP ;
 size_t NSIM_IPSEC_VALID ;
 int XFRM_OFFLOAD_INBOUND ;
 int memcpy (int *,struct nsim_sa*,int) ;
 int memset (struct nsim_sa*,int ,int) ;
 int netdev_err (struct net_device*,char*,...) ;
 struct netdevsim* netdev_priv (struct net_device*) ;
 int nsim_ipsec_find_empty_idx (struct nsim_ipsec*) ;
 int nsim_ipsec_parse_proto_keys (struct xfrm_state*,int ,int *) ;

__attribute__((used)) static int nsim_ipsec_add_sa(struct xfrm_state *xs)
{
 struct nsim_ipsec *ipsec;
 struct net_device *dev;
 struct netdevsim *ns;
 struct nsim_sa sa;
 u16 sa_idx;
 int ret;

 dev = xs->xso.dev;
 ns = netdev_priv(dev);
 ipsec = &ns->ipsec;

 if (xs->id.proto != IPPROTO_ESP && xs->id.proto != IPPROTO_AH) {
  netdev_err(dev, "Unsupported protocol 0x%04x for ipsec offload\n",
      xs->id.proto);
  return -EINVAL;
 }

 if (xs->calg) {
  netdev_err(dev, "Compression offload not supported\n");
  return -EINVAL;
 }


 ret = nsim_ipsec_find_empty_idx(ipsec);
 if (ret < 0) {
  netdev_err(dev, "No space for SA in Rx table!\n");
  return ret;
 }
 sa_idx = (u16)ret;

 memset(&sa, 0, sizeof(sa));
 sa.used = 1;
 sa.xs = xs;

 if (sa.xs->id.proto & IPPROTO_ESP)
  sa.crypt = xs->ealg || xs->aead;


 ret = nsim_ipsec_parse_proto_keys(xs, sa.key, &sa.salt);
 if (ret) {
  netdev_err(dev, "Failed to get key data for SA table\n");
  return ret;
 }

 if (xs->xso.flags & XFRM_OFFLOAD_INBOUND) {
  sa.rx = 1;

  if (xs->props.family == AF_INET6)
   memcpy(sa.ipaddr, &xs->id.daddr.a6, 16);
  else
   memcpy(&sa.ipaddr[3], &xs->id.daddr.a4, 4);
 }


 memcpy(&ipsec->sa[sa_idx], &sa, sizeof(sa));




 xs->xso.offload_handle = sa_idx | NSIM_IPSEC_VALID;
 ipsec->count++;

 return 0;
}
