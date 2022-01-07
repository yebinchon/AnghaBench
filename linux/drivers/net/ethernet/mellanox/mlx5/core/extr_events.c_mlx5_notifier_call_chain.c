
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_events {int nh; } ;


 int atomic_notifier_call_chain (int *,unsigned int,void*) ;

int mlx5_notifier_call_chain(struct mlx5_events *events, unsigned int event, void *data)
{
 return atomic_notifier_call_chain(&events->nh, event, data);
}
