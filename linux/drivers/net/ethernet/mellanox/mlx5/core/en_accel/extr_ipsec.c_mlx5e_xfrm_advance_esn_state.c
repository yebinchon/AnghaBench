
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_state {int dummy; } ;
struct mlx5e_ipsec_sa_entry {TYPE_1__* ipsec; } ;
struct mlx5e_ipsec_modify_state_work {int work; struct mlx5e_ipsec_sa_entry* sa_entry; int attrs; } ;
struct TYPE_2__ {int wq; } ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 int WARN_ON (int) ;
 int _update_xfrm_state ;
 struct mlx5e_ipsec_modify_state_work* kzalloc (int,int ) ;
 int mlx5e_ipsec_build_accel_xfrm_attrs (struct mlx5e_ipsec_sa_entry*,int *) ;
 int mlx5e_ipsec_update_esn_state (struct mlx5e_ipsec_sa_entry*) ;
 int queue_work (int ,int *) ;
 struct mlx5e_ipsec_sa_entry* to_ipsec_sa_entry (struct xfrm_state*) ;

__attribute__((used)) static void mlx5e_xfrm_advance_esn_state(struct xfrm_state *x)
{
 struct mlx5e_ipsec_sa_entry *sa_entry = to_ipsec_sa_entry(x);
 struct mlx5e_ipsec_modify_state_work *modify_work;
 bool need_update;

 if (!sa_entry)
  return;

 need_update = mlx5e_ipsec_update_esn_state(sa_entry);
 if (!need_update)
  return;

 modify_work = kzalloc(sizeof(*modify_work), GFP_ATOMIC);
 if (!modify_work)
  return;

 mlx5e_ipsec_build_accel_xfrm_attrs(sa_entry, &modify_work->attrs);
 modify_work->sa_entry = sa_entry;

 INIT_WORK(&modify_work->work, _update_xfrm_state);
 WARN_ON(!queue_work(sa_entry->ipsec->wq, &modify_work->work));
}
