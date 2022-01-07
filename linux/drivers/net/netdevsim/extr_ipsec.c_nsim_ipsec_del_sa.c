
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_3__ {size_t offload_handle; int dev; } ;
struct xfrm_state {TYPE_1__ xso; } ;
struct nsim_sa {int dummy; } ;
struct nsim_ipsec {int count; TYPE_2__* sa; } ;
struct netdevsim {int netdev; struct nsim_ipsec ipsec; } ;
struct TYPE_4__ {int used; } ;


 size_t NSIM_IPSEC_VALID ;
 int memset (TYPE_2__*,int ,int) ;
 int netdev_err (int ,char*,size_t) ;
 struct netdevsim* netdev_priv (int ) ;

__attribute__((used)) static void nsim_ipsec_del_sa(struct xfrm_state *xs)
{
 struct netdevsim *ns = netdev_priv(xs->xso.dev);
 struct nsim_ipsec *ipsec = &ns->ipsec;
 u16 sa_idx;

 sa_idx = xs->xso.offload_handle & ~NSIM_IPSEC_VALID;
 if (!ipsec->sa[sa_idx].used) {
  netdev_err(ns->netdev, "Invalid SA for delete sa_idx=%d\n",
      sa_idx);
  return;
 }

 memset(&ipsec->sa[sa_idx], 0, sizeof(struct nsim_sa));
 ipsec->count--;
}
