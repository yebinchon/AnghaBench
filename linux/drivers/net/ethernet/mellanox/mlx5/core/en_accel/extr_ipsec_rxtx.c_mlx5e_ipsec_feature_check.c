
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ offload_handle; } ;
struct xfrm_state {TYPE_1__ xso; } ;
struct sk_buff {int dummy; } ;
struct sec_path {struct xfrm_state** xvec; scalar_t__ len; } ;
struct net_device {int dummy; } ;
typedef int netdev_features_t ;


 struct sec_path* skb_sec_path (struct sk_buff*) ;

bool mlx5e_ipsec_feature_check(struct sk_buff *skb, struct net_device *netdev,
          netdev_features_t features)
{
 struct sec_path *sp = skb_sec_path(skb);
 struct xfrm_state *x;

 if (sp && sp->len) {
  x = sp->xvec[0];
  if (x && x->xso.offload_handle)
   return 1;
 }
 return 0;
}
