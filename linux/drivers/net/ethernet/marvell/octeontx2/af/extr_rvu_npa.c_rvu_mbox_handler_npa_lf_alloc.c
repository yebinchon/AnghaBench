
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct rvu_pfvf {TYPE_2__* npa_qints_ctx; TYPE_2__* aura_ctx; void* pool_bmap; TYPE_2__* pool_ctx; void* aura_bmap; int npalf; } ;
struct rvu_hwinfo {struct rvu_block* block; } ;
struct rvu_block {int dummy; } ;
struct rvu {int dev; struct rvu_hwinfo* hw; } ;
struct npa_lf_alloc_rsp {int stack_pg_ptrs; int stack_pg_bytes; int qints; } ;
struct TYPE_3__ {int pcifunc; } ;
struct npa_lf_alloc_req {int aura_sz; int nr_pools; TYPE_1__ hdr; } ;
struct TYPE_4__ {scalar_t__ iova; } ;


 int BIT_ULL (int) ;
 int BLKTYPE_NPA ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NPA_AF_CONST ;
 int NPA_AF_CONST1 ;
 int NPA_AF_ERR_AF_LF_INVALID ;
 int NPA_AF_ERR_LF_RESET ;
 int NPA_AF_ERR_PARAM ;
 int NPA_AF_LFX_AURAS_CFG (int) ;
 int NPA_AF_LFX_LOC_AURAS_BASE (int) ;
 int NPA_AF_LFX_QINTS_BASE (int) ;
 int NPA_AF_LFX_QINTS_CFG (int) ;
 int NPA_AURA_COUNT (int) ;
 int NPA_AURA_SZ_0 ;
 int NPA_AURA_SZ_MAX ;
 int dev_err (int ,char*,int) ;
 void* kcalloc (int,int,int ) ;
 int npa_ctx_free (struct rvu*,struct rvu_pfvf*) ;
 int qmem_alloc (int ,TYPE_2__**,int,int) ;
 int rvu_get_blkaddr (struct rvu*,int ,int ) ;
 int rvu_get_lf (struct rvu*,struct rvu_block*,int ,int ) ;
 struct rvu_pfvf* rvu_get_pfvf (struct rvu*,int ) ;
 int rvu_lf_reset (struct rvu*,struct rvu_block*,int) ;
 int rvu_read64 (struct rvu*,int,int ) ;
 int rvu_write64 (struct rvu*,int,int ,int) ;

int rvu_mbox_handler_npa_lf_alloc(struct rvu *rvu,
      struct npa_lf_alloc_req *req,
      struct npa_lf_alloc_rsp *rsp)
{
 int npalf, qints, hwctx_size, err, rc = 0;
 struct rvu_hwinfo *hw = rvu->hw;
 u16 pcifunc = req->hdr.pcifunc;
 struct rvu_block *block;
 struct rvu_pfvf *pfvf;
 u64 cfg, ctx_cfg;
 int blkaddr;

 if (req->aura_sz > NPA_AURA_SZ_MAX ||
     req->aura_sz == NPA_AURA_SZ_0 || !req->nr_pools)
  return NPA_AF_ERR_PARAM;

 pfvf = rvu_get_pfvf(rvu, pcifunc);
 blkaddr = rvu_get_blkaddr(rvu, BLKTYPE_NPA, pcifunc);
 if (!pfvf->npalf || blkaddr < 0)
  return NPA_AF_ERR_AF_LF_INVALID;

 block = &hw->block[blkaddr];
 npalf = rvu_get_lf(rvu, block, pcifunc, 0);
 if (npalf < 0)
  return NPA_AF_ERR_AF_LF_INVALID;


 err = rvu_lf_reset(rvu, block, npalf);
 if (err) {
  dev_err(rvu->dev, "Failed to reset NPALF%d\n", npalf);
  return NPA_AF_ERR_LF_RESET;
 }

 ctx_cfg = rvu_read64(rvu, blkaddr, NPA_AF_CONST1);


 hwctx_size = 1UL << (ctx_cfg & 0xF);
 err = qmem_alloc(rvu->dev, &pfvf->aura_ctx,
    NPA_AURA_COUNT(req->aura_sz), hwctx_size);
 if (err)
  goto free_mem;

 pfvf->aura_bmap = kcalloc(NPA_AURA_COUNT(req->aura_sz), sizeof(long),
      GFP_KERNEL);
 if (!pfvf->aura_bmap)
  goto free_mem;


 hwctx_size = 1UL << ((ctx_cfg >> 4) & 0xF);
 err = qmem_alloc(rvu->dev, &pfvf->pool_ctx, req->nr_pools, hwctx_size);
 if (err)
  goto free_mem;

 pfvf->pool_bmap = kcalloc(NPA_AURA_COUNT(req->aura_sz), sizeof(long),
      GFP_KERNEL);
 if (!pfvf->pool_bmap)
  goto free_mem;


 cfg = rvu_read64(rvu, blkaddr, NPA_AF_CONST);
 qints = (cfg >> 28) & 0xFFF;


 hwctx_size = 1UL << ((ctx_cfg >> 8) & 0xF);
 err = qmem_alloc(rvu->dev, &pfvf->npa_qints_ctx, qints, hwctx_size);
 if (err)
  goto free_mem;

 cfg = rvu_read64(rvu, blkaddr, NPA_AF_LFX_AURAS_CFG(npalf));

 cfg &= ~(BIT_ULL(34) - 1);

 cfg |= (req->aura_sz << 16) | BIT_ULL(34);
 rvu_write64(rvu, blkaddr, NPA_AF_LFX_AURAS_CFG(npalf), cfg);


 rvu_write64(rvu, blkaddr, NPA_AF_LFX_LOC_AURAS_BASE(npalf),
      (u64)pfvf->aura_ctx->iova);


 rvu_write64(rvu, blkaddr, NPA_AF_LFX_QINTS_CFG(npalf), BIT_ULL(36));
 rvu_write64(rvu, blkaddr, NPA_AF_LFX_QINTS_BASE(npalf),
      (u64)pfvf->npa_qints_ctx->iova);

 goto exit;

free_mem:
 npa_ctx_free(rvu, pfvf);
 rc = -ENOMEM;

exit:

 cfg = rvu_read64(rvu, blkaddr, NPA_AF_CONST);
 rsp->stack_pg_ptrs = (cfg >> 8) & 0xFF;
 rsp->stack_pg_bytes = cfg & 0xFF;
 rsp->qints = (cfg >> 28) & 0xFFF;
 return rc;
}
