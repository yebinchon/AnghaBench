
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_bar {int * iomem; } ;
struct nfp6000_pcie {int bars; struct nfp_bar* bar; } ;


 int iounmap (int *) ;

__attribute__((used)) static void disable_bars(struct nfp6000_pcie *nfp)
{
 struct nfp_bar *bar = &nfp->bar[0];
 int n;

 for (n = 0; n < nfp->bars; n++, bar++) {
  if (bar->iomem) {
   iounmap(bar->iomem);
   bar->iomem = ((void*)0);
  }
 }
}
