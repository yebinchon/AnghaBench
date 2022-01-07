
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * notifier_call; } ;
struct lag_mp {TYPE_1__ fib_nb; } ;
struct mlx5_lag {struct lag_mp lag_mp; } ;


 int unregister_fib_notifier (TYPE_1__*) ;

void mlx5_lag_mp_cleanup(struct mlx5_lag *ldev)
{
 struct lag_mp *mp = &ldev->lag_mp;

 if (!mp->fib_nb.notifier_call)
  return;

 unregister_fib_notifier(&mp->fib_nb);
 mp->fib_nb.notifier_call = ((void*)0);
}
