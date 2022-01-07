
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lio_vf_rep_netdev_notifier ;
 int pr_err (char*) ;
 scalar_t__ unregister_netdevice_notifier (int *) ;

void
lio_vf_rep_modexit(void)
{
 if (unregister_netdevice_notifier(&lio_vf_rep_netdev_notifier))
  pr_err("netdev notifier unregister failed\n");
}
