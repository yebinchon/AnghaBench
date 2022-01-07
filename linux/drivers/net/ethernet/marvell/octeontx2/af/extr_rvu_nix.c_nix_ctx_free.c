
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvu_pfvf {int * cq_ints_ctx; int * nix_qints_ctx; int * rss_ctx; int * cq_ctx; int * sq_ctx; int * rq_ctx; int * sq_bmap; int * cq_bmap; int * rq_bmap; } ;
struct rvu {int dev; } ;


 int kfree (int *) ;
 int qmem_free (int ,int *) ;

__attribute__((used)) static void nix_ctx_free(struct rvu *rvu, struct rvu_pfvf *pfvf)
{
 kfree(pfvf->rq_bmap);
 kfree(pfvf->sq_bmap);
 kfree(pfvf->cq_bmap);
 if (pfvf->rq_ctx)
  qmem_free(rvu->dev, pfvf->rq_ctx);
 if (pfvf->sq_ctx)
  qmem_free(rvu->dev, pfvf->sq_ctx);
 if (pfvf->cq_ctx)
  qmem_free(rvu->dev, pfvf->cq_ctx);
 if (pfvf->rss_ctx)
  qmem_free(rvu->dev, pfvf->rss_ctx);
 if (pfvf->nix_qints_ctx)
  qmem_free(rvu->dev, pfvf->nix_qints_ctx);
 if (pfvf->cq_ints_ctx)
  qmem_free(rvu->dev, pfvf->cq_ints_ctx);

 pfvf->rq_bmap = ((void*)0);
 pfvf->cq_bmap = ((void*)0);
 pfvf->sq_bmap = ((void*)0);
 pfvf->rq_ctx = ((void*)0);
 pfvf->sq_ctx = ((void*)0);
 pfvf->cq_ctx = ((void*)0);
 pfvf->rss_ctx = ((void*)0);
 pfvf->nix_qints_ctx = ((void*)0);
 pfvf->cq_ints_ctx = ((void*)0);
}
