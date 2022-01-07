
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int ae_chain ;
 int dev_err (int *,char*) ;
 scalar_t__ raw_notifier_chain_unregister (int *,struct notifier_block*) ;

void hnae_unregister_notifier(struct notifier_block *nb)
{
 if (raw_notifier_chain_unregister(&ae_chain, nb))
  dev_err(((void*)0), "notifier chain unregister fail\n");
}
