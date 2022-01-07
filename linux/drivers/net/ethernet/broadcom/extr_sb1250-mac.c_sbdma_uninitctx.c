
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbmacdma {int * sbdma_ctxtable; int * sbdma_dscrtable; int * sbdma_dscrtable_unaligned; } ;


 int kfree (int *) ;

__attribute__((used)) static void sbdma_uninitctx(struct sbmacdma *d)
{
 kfree(d->sbdma_dscrtable_unaligned);
 d->sbdma_dscrtable_unaligned = d->sbdma_dscrtable = ((void*)0);

 kfree(d->sbdma_ctxtable);
 d->sbdma_ctxtable = ((void*)0);
}
