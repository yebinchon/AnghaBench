
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsim_ipsec {int pfile; scalar_t__ count; } ;
struct netdevsim {int netdev; struct nsim_ipsec ipsec; } ;


 int debugfs_remove_recursive (int ) ;
 int netdev_err (int ,char*,scalar_t__) ;

void nsim_ipsec_teardown(struct netdevsim *ns)
{
 struct nsim_ipsec *ipsec = &ns->ipsec;

 if (ipsec->count)
  netdev_err(ns->netdev, "tearing down IPsec offload with %d SAs left\n",
      ipsec->count);
 debugfs_remove_recursive(ipsec->pfile);
}
