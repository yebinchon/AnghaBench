
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct rvu_pfvf {TYPE_1__* rss_ctx; } ;
struct rvu {int dev; } ;
struct TYPE_2__ {scalar_t__ iova; } ;


 int BIT_ULL (int) ;
 int MAX_RSS_INDIR_TBL_SIZE ;
 int NIX_AF_LFX_RSS_BASE (int) ;
 int NIX_AF_LFX_RSS_CFG (int) ;
 int NIX_AF_LFX_RSS_GRPX (int,int) ;
 int ilog2 (int) ;
 int qmem_alloc (int ,TYPE_1__**,int,int) ;
 int rvu_write64 (struct rvu*,int,int ,int) ;

__attribute__((used)) static int nixlf_rss_ctx_init(struct rvu *rvu, int blkaddr,
         struct rvu_pfvf *pfvf, int nixlf,
         int rss_sz, int rss_grps, int hwctx_size)
{
 int err, grp, num_indices;


 if (!rss_sz)
  return 0;
 num_indices = rss_sz * rss_grps;


 err = qmem_alloc(rvu->dev, &pfvf->rss_ctx, num_indices, hwctx_size);
 if (err)
  return err;

 rvu_write64(rvu, blkaddr, NIX_AF_LFX_RSS_BASE(nixlf),
      (u64)pfvf->rss_ctx->iova);


 rvu_write64(rvu, blkaddr, NIX_AF_LFX_RSS_CFG(nixlf),
      BIT_ULL(36) | BIT_ULL(4) |
      ilog2(num_indices / MAX_RSS_INDIR_TBL_SIZE));

 for (grp = 0; grp < rss_grps; grp++)
  rvu_write64(rvu, blkaddr, NIX_AF_LFX_RSS_GRPX(nixlf, grp),
       ((ilog2(rss_sz) - 1) << 16) | (rss_sz * grp));
 return 0;
}
