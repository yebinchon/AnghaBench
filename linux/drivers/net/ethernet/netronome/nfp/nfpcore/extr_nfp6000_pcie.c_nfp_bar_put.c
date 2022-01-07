
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_bar {int refcnt; } ;
struct nfp6000_pcie {int bar_waiters; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void nfp_bar_put(struct nfp6000_pcie *nfp, struct nfp_bar *bar)
{
 if (atomic_dec_and_test(&bar->refcnt))
  wake_up_interruptible(&nfp->bar_waiters);
}
