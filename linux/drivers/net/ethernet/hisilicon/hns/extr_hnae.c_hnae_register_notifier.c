
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int ae_chain ;
 int raw_notifier_chain_register (int *,struct notifier_block*) ;

int hnae_register_notifier(struct notifier_block *nb)
{
 return raw_notifier_chain_register(&ae_chain, nb);
}
