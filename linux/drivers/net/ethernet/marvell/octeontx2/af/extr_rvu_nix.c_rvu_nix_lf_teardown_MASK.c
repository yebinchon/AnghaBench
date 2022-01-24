#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct rvu_pfvf {scalar_t__ cq_ctx; scalar_t__ rq_ctx; scalar_t__ sq_ctx; } ;
struct rvu {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  pcifunc; } ;
struct hwctx_disable_req {int /*<<< orphan*/  ctype; TYPE_1__ hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  NIX_AQ_CTYPE_CQ ; 
 int /*<<< orphan*/  NIX_AQ_CTYPE_RQ ; 
 int /*<<< orphan*/  NIX_AQ_CTYPE_SQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rvu*,struct rvu_pfvf*) ; 
 int /*<<< orphan*/  FUNC2 (struct rvu*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct rvu*,struct hwctx_disable_req*) ; 
 int /*<<< orphan*/  FUNC4 (struct rvu*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rvu*,int /*<<< orphan*/ ) ; 
 struct rvu_pfvf* FUNC6 (struct rvu*,int /*<<< orphan*/ ) ; 

void FUNC7(struct rvu *rvu, u16 pcifunc, int blkaddr, int nixlf)
{
	struct rvu_pfvf *pfvf = FUNC6(rvu, pcifunc);
	struct hwctx_disable_req ctx_req;
	int err;

	ctx_req.hdr.pcifunc = pcifunc;

	/* Cleanup NPC MCAM entries, free Tx scheduler queues being used */
	FUNC2(rvu, pcifunc, nixlf);
	FUNC4(rvu, blkaddr);
	FUNC5(rvu, pcifunc);

	if (pfvf->sq_ctx) {
		ctx_req.ctype = NIX_AQ_CTYPE_SQ;
		err = FUNC3(rvu, &ctx_req);
		if (err)
			FUNC0(rvu->dev, "SQ ctx disable failed\n");
	}

	if (pfvf->rq_ctx) {
		ctx_req.ctype = NIX_AQ_CTYPE_RQ;
		err = FUNC3(rvu, &ctx_req);
		if (err)
			FUNC0(rvu->dev, "RQ ctx disable failed\n");
	}

	if (pfvf->cq_ctx) {
		ctx_req.ctype = NIX_AQ_CTYPE_CQ;
		err = FUNC3(rvu, &ctx_req);
		if (err)
			FUNC0(rvu->dev, "CQ ctx disable failed\n");
	}

	FUNC1(rvu, pfvf);
}