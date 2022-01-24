#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct rvu_pfvf {TYPE_2__* npa_qints_ctx; TYPE_2__* aura_ctx; void* pool_bmap; TYPE_2__* pool_ctx; void* aura_bmap; int /*<<< orphan*/  npalf; } ;
struct rvu_hwinfo {struct rvu_block* block; } ;
struct rvu_block {int dummy; } ;
struct rvu {int /*<<< orphan*/  dev; struct rvu_hwinfo* hw; } ;
struct npa_lf_alloc_rsp {int stack_pg_ptrs; int stack_pg_bytes; int qints; } ;
struct TYPE_3__ {int /*<<< orphan*/  pcifunc; } ;
struct npa_lf_alloc_req {int aura_sz; int nr_pools; TYPE_1__ hdr; } ;
struct TYPE_4__ {scalar_t__ iova; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  BLKTYPE_NPA ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NPA_AF_CONST ; 
 int /*<<< orphan*/  NPA_AF_CONST1 ; 
 int NPA_AF_ERR_AF_LF_INVALID ; 
 int NPA_AF_ERR_LF_RESET ; 
 int NPA_AF_ERR_PARAM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int NPA_AURA_SZ_0 ; 
 int NPA_AURA_SZ_MAX ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 void* FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rvu*,struct rvu_pfvf*) ; 
 int FUNC9 (int /*<<< orphan*/ ,TYPE_2__**,int,int) ; 
 int FUNC10 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct rvu*,struct rvu_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rvu_pfvf* FUNC12 (struct rvu*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct rvu*,struct rvu_block*,int) ; 
 int FUNC14 (struct rvu*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct rvu*,int,int /*<<< orphan*/ ,int) ; 

int FUNC16(struct rvu *rvu,
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

	pfvf = FUNC12(rvu, pcifunc);
	blkaddr = FUNC10(rvu, BLKTYPE_NPA, pcifunc);
	if (!pfvf->npalf || blkaddr < 0)
		return NPA_AF_ERR_AF_LF_INVALID;

	block = &hw->block[blkaddr];
	npalf = FUNC11(rvu, block, pcifunc, 0);
	if (npalf < 0)
		return NPA_AF_ERR_AF_LF_INVALID;

	/* Reset this NPA LF */
	err = FUNC13(rvu, block, npalf);
	if (err) {
		FUNC6(rvu->dev, "Failed to reset NPALF%d\n", npalf);
		return NPA_AF_ERR_LF_RESET;
	}

	ctx_cfg = FUNC14(rvu, blkaddr, NPA_AF_CONST1);

	/* Alloc memory for aura HW contexts */
	hwctx_size = 1UL << (ctx_cfg & 0xF);
	err = FUNC9(rvu->dev, &pfvf->aura_ctx,
			 FUNC5(req->aura_sz), hwctx_size);
	if (err)
		goto free_mem;

	pfvf->aura_bmap = FUNC7(FUNC5(req->aura_sz), sizeof(long),
				  GFP_KERNEL);
	if (!pfvf->aura_bmap)
		goto free_mem;

	/* Alloc memory for pool HW contexts */
	hwctx_size = 1UL << ((ctx_cfg >> 4) & 0xF);
	err = FUNC9(rvu->dev, &pfvf->pool_ctx, req->nr_pools, hwctx_size);
	if (err)
		goto free_mem;

	pfvf->pool_bmap = FUNC7(FUNC5(req->aura_sz), sizeof(long),
				  GFP_KERNEL);
	if (!pfvf->pool_bmap)
		goto free_mem;

	/* Get no of queue interrupts supported */
	cfg = FUNC14(rvu, blkaddr, NPA_AF_CONST);
	qints = (cfg >> 28) & 0xFFF;

	/* Alloc memory for Qints HW contexts */
	hwctx_size = 1UL << ((ctx_cfg >> 8) & 0xF);
	err = FUNC9(rvu->dev, &pfvf->npa_qints_ctx, qints, hwctx_size);
	if (err)
		goto free_mem;

	cfg = FUNC14(rvu, blkaddr, FUNC1(npalf));
	/* Clear way partition mask and set aura offset to '0' */
	cfg &= ~(FUNC0(34) - 1);
	/* Set aura size & enable caching of contexts */
	cfg |= (req->aura_sz << 16) | FUNC0(34);
	FUNC15(rvu, blkaddr, FUNC1(npalf), cfg);

	/* Configure aura HW context's base */
	FUNC15(rvu, blkaddr, FUNC2(npalf),
		    (u64)pfvf->aura_ctx->iova);

	/* Enable caching of qints hw context */
	FUNC15(rvu, blkaddr, FUNC4(npalf), FUNC0(36));
	FUNC15(rvu, blkaddr, FUNC3(npalf),
		    (u64)pfvf->npa_qints_ctx->iova);

	goto exit;

free_mem:
	FUNC8(rvu, pfvf);
	rc = -ENOMEM;

exit:
	/* set stack page info */
	cfg = FUNC14(rvu, blkaddr, NPA_AF_CONST);
	rsp->stack_pg_ptrs = (cfg >> 8) & 0xFF;
	rsp->stack_pg_bytes = cfg & 0xFF;
	rsp->qints = (cfg >> 28) & 0xFFF;
	return rc;
}