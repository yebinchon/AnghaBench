
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ offload_handle; } ;
struct xfrm_state {TYPE_1__ xso; } ;
struct mlx5e_ipsec_sa_entry {struct xfrm_state* x; } ;


 int WARN_ON (int) ;

__attribute__((used)) static struct mlx5e_ipsec_sa_entry *to_ipsec_sa_entry(struct xfrm_state *x)
{
 struct mlx5e_ipsec_sa_entry *sa;

 if (!x)
  return ((void*)0);

 sa = (struct mlx5e_ipsec_sa_entry *)x->xso.offload_handle;
 if (!sa)
  return ((void*)0);

 WARN_ON(sa->x != x);
 return sa;
}
