
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvu_pfvf {int * npa_qints_ctx; int * pool_ctx; int * pool_bmap; int * aura_ctx; int * aura_bmap; } ;
struct rvu {int dev; } ;


 int kfree (int *) ;
 int qmem_free (int ,int *) ;

__attribute__((used)) static void npa_ctx_free(struct rvu *rvu, struct rvu_pfvf *pfvf)
{
 kfree(pfvf->aura_bmap);
 pfvf->aura_bmap = ((void*)0);

 qmem_free(rvu->dev, pfvf->aura_ctx);
 pfvf->aura_ctx = ((void*)0);

 kfree(pfvf->pool_bmap);
 pfvf->pool_bmap = ((void*)0);

 qmem_free(rvu->dev, pfvf->pool_ctx);
 pfvf->pool_ctx = ((void*)0);

 qmem_free(rvu->dev, pfvf->npa_qints_ctx);
 pfvf->npa_qints_ctx = ((void*)0);
}
