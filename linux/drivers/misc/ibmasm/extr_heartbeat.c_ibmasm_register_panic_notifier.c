
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_notifier_chain_register (int *,int *) ;
 int panic_notifier ;
 int panic_notifier_list ;

void ibmasm_register_panic_notifier(void)
{
 atomic_notifier_chain_register(&panic_notifier_list, &panic_notifier);
}
