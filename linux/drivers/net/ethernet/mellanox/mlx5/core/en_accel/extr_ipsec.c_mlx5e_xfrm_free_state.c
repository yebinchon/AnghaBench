
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct xfrm_state {TYPE_2__ xso; } ;
struct mlx5e_ipsec_sa_entry {int xfrm; scalar_t__ hw_context; TYPE_1__* ipsec; } ;
struct TYPE_3__ {int wq; } ;


 int XFRM_OFFLOAD_INBOUND ;
 int flush_workqueue (int ) ;
 int kfree (struct mlx5e_ipsec_sa_entry*) ;
 int mlx5_accel_esp_destroy_xfrm (int ) ;
 int mlx5_accel_esp_free_hw_context (scalar_t__) ;
 int mlx5e_ipsec_sadb_rx_free (struct mlx5e_ipsec_sa_entry*) ;
 struct mlx5e_ipsec_sa_entry* to_ipsec_sa_entry (struct xfrm_state*) ;

__attribute__((used)) static void mlx5e_xfrm_free_state(struct xfrm_state *x)
{
 struct mlx5e_ipsec_sa_entry *sa_entry = to_ipsec_sa_entry(x);

 if (!sa_entry)
  return;

 if (sa_entry->hw_context) {
  flush_workqueue(sa_entry->ipsec->wq);
  mlx5_accel_esp_free_hw_context(sa_entry->hw_context);
  mlx5_accel_esp_destroy_xfrm(sa_entry->xfrm);
 }

 if (x->xso.flags & XFRM_OFFLOAD_INBOUND)
  mlx5e_ipsec_sadb_rx_free(sa_entry);

 kfree(sa_entry);
}
