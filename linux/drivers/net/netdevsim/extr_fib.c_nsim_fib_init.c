
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nsim_fib_dump_inconsistent ;
 int nsim_fib_nb ;
 int nsim_fib_net_ops ;
 int pr_err (char*) ;
 int register_fib_notifier (int *,int ) ;
 int register_pernet_subsys (int *) ;
 int unregister_pernet_subsys (int *) ;

int nsim_fib_init(void)
{
 int err;

 err = register_pernet_subsys(&nsim_fib_net_ops);
 if (err < 0) {
  pr_err("Failed to register pernet subsystem\n");
  goto err_out;
 }

 err = register_fib_notifier(&nsim_fib_nb, nsim_fib_dump_inconsistent);
 if (err < 0) {
  pr_err("Failed to register fib notifier\n");
  unregister_pernet_subsys(&nsim_fib_net_ops);
  goto err_out;
 }

err_out:
 return err;
}
