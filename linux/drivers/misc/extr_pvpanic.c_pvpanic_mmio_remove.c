
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int atomic_notifier_chain_unregister (int *,int *) ;
 int panic_notifier_list ;
 int pvpanic_panic_nb ;

__attribute__((used)) static int pvpanic_mmio_remove(struct platform_device *pdev)
{

 atomic_notifier_chain_unregister(&panic_notifier_list,
      &pvpanic_panic_nb);

 return 0;
}
