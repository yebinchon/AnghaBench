
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_ctx {int pring_va; } ;



__attribute__((used)) static int wil_is_pmc_allocated(struct pmc_ctx *pmc)
{
 return !!pmc->pring_va;
}
