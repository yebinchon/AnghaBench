
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nsim_fib_nb ;
 int nsim_fib_net_ops ;
 int unregister_fib_notifier (int *) ;
 int unregister_pernet_subsys (int *) ;

void nsim_fib_exit(void)
{
 unregister_fib_notifier(&nsim_fib_nb);
 unregister_pernet_subsys(&nsim_fib_net_ops);
}
