
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct xfrm_state {TYPE_1__ xso; } ;
struct sk_buff {int dummy; } ;
struct nsim_ipsec {int ok; } ;
struct netdevsim {struct nsim_ipsec ipsec; } ;


 struct netdevsim* netdev_priv (int ) ;

__attribute__((used)) static bool nsim_ipsec_offload_ok(struct sk_buff *skb, struct xfrm_state *xs)
{
 struct netdevsim *ns = netdev_priv(xs->xso.dev);
 struct nsim_ipsec *ipsec = &ns->ipsec;

 ipsec->ok++;

 return 1;
}
