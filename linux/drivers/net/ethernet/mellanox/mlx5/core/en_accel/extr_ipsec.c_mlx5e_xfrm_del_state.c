
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct xfrm_state {TYPE_1__ xso; } ;
struct mlx5e_ipsec_sa_entry {int dummy; } ;


 int XFRM_OFFLOAD_INBOUND ;
 int mlx5e_ipsec_sadb_rx_del (struct mlx5e_ipsec_sa_entry*) ;
 struct mlx5e_ipsec_sa_entry* to_ipsec_sa_entry (struct xfrm_state*) ;

__attribute__((used)) static void mlx5e_xfrm_del_state(struct xfrm_state *x)
{
 struct mlx5e_ipsec_sa_entry *sa_entry = to_ipsec_sa_entry(x);

 if (!sa_entry)
  return;

 if (x->xso.flags & XFRM_OFFLOAD_INBOUND)
  mlx5e_ipsec_sadb_rx_del(sa_entry);
}
