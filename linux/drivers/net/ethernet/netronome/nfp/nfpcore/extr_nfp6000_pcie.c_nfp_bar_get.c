
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_bar {int refcnt; } ;
struct nfp6000_pcie {int dummy; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static void nfp_bar_get(struct nfp6000_pcie *nfp, struct nfp_bar *bar)
{
 atomic_inc(&bar->refcnt);
}
