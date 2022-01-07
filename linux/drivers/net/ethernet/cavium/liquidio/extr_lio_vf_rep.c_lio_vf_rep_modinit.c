
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EFAULT ;
 int lio_vf_rep_netdev_notifier ;
 int pr_err (char*) ;
 scalar_t__ register_netdevice_notifier (int *) ;

int
lio_vf_rep_modinit(void)
{
 if (register_netdevice_notifier(&lio_vf_rep_netdev_notifier)) {
  pr_err("netdev notifier registration failed\n");
  return -EFAULT;
 }

 return 0;
}
