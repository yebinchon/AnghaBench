
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_lag {int dummy; } ;
struct mlx5_fib_event_work {unsigned long event; struct mlx5_lag* ldev; int work; } ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ WARN_ON (int) ;
 struct mlx5_fib_event_work* kzalloc (int,int ) ;
 int mlx5_lag_fib_update ;

__attribute__((used)) static struct mlx5_fib_event_work *
mlx5_lag_init_fib_work(struct mlx5_lag *ldev, unsigned long event)
{
 struct mlx5_fib_event_work *fib_work;

 fib_work = kzalloc(sizeof(*fib_work), GFP_ATOMIC);
 if (WARN_ON(!fib_work))
  return ((void*)0);

 INIT_WORK(&fib_work->work, mlx5_lag_fib_update);
 fib_work->ldev = ldev;
 fib_work->event = event;

 return fib_work;
}
