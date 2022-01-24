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
struct rvu_pfvf {int /*<<< orphan*/  npalf; } ;
struct rvu_hwinfo {struct rvu_block* block; } ;
struct rvu_block {int dummy; } ;
struct rvu {int /*<<< orphan*/  dev; struct rvu_hwinfo* hw; } ;
struct msg_rsp {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pcifunc; } ;
struct msg_req {TYPE_1__ hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKTYPE_NPA ; 
 int NPA_AF_ERR_AF_LF_INVALID ; 
 int NPA_AF_ERR_LF_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rvu*,struct rvu_pfvf*) ; 
 int FUNC2 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rvu*,struct rvu_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rvu_pfvf* FUNC4 (struct rvu*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct rvu*,struct rvu_block*,int) ; 

int FUNC6(struct rvu *rvu, struct msg_req *req,
				 struct msg_rsp *rsp)
{
	struct rvu_hwinfo *hw = rvu->hw;
	u16 pcifunc = req->hdr.pcifunc;
	struct rvu_block *block;
	struct rvu_pfvf *pfvf;
	int npalf, err;
	int blkaddr;

	pfvf = FUNC4(rvu, pcifunc);
	blkaddr = FUNC2(rvu, BLKTYPE_NPA, pcifunc);
	if (!pfvf->npalf || blkaddr < 0)
		return NPA_AF_ERR_AF_LF_INVALID;

	block = &hw->block[blkaddr];
	npalf = FUNC3(rvu, block, pcifunc, 0);
	if (npalf < 0)
		return NPA_AF_ERR_AF_LF_INVALID;

	/* Reset this NPA LF */
	err = FUNC5(rvu, block, npalf);
	if (err) {
		FUNC0(rvu->dev, "Failed to reset NPALF%d\n", npalf);
		return NPA_AF_ERR_LF_RESET;
	}

	FUNC1(rvu, pfvf);

	return 0;
}