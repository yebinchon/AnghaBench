
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_nb {size_t event_type; int nb; } ;
struct mlx5_eq_table {int * nh; } ;
struct TYPE_2__ {struct mlx5_eq_table* eq_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int atomic_notifier_chain_unregister (int *,int *) ;

int mlx5_eq_notifier_unregister(struct mlx5_core_dev *dev, struct mlx5_nb *nb)
{
 struct mlx5_eq_table *eqt = dev->priv.eq_table;

 return atomic_notifier_chain_unregister(&eqt->nh[nb->event_type], &nb->nb);
}
