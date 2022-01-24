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
typedef  int u32 ;
typedef  int u16 ;
struct rvu_pfvf {int /*<<< orphan*/  nixlf; } ;
struct rvu {int /*<<< orphan*/  dev; int /*<<< orphan*/  hw; } ;
struct nix_mark_format_cfg_rsp {int mark_format_idx; } ;
struct TYPE_2__ {int pcifunc; } ;
struct nix_mark_format_cfg {scalar_t__ r_val; scalar_t__ r_mask; scalar_t__ y_val; scalar_t__ y_mask; scalar_t__ offset; TYPE_1__ hdr; } ;
struct nix_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKTYPE_NIX ; 
 int EINVAL ; 
 int NIX_AF_ERR_AF_LF_INVALID ; 
 int NIX_AF_ERR_MARK_CFG_FAIL ; 
 int RVU_PFVF_FUNC_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 struct nix_hw* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct rvu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct rvu_pfvf* FUNC4 (struct rvu*,int) ; 
 int FUNC5 (struct rvu*,struct nix_hw*,int,int) ; 

int FUNC6(struct rvu *rvu,
					 struct nix_mark_format_cfg  *req,
					 struct nix_mark_format_cfg_rsp *rsp)
{
	u16 pcifunc = req->hdr.pcifunc;
	struct nix_hw *nix_hw;
	struct rvu_pfvf *pfvf;
	int blkaddr, rc;
	u32 cfg;

	pfvf = FUNC4(rvu, pcifunc);
	blkaddr = FUNC2(rvu, BLKTYPE_NIX, pcifunc);
	if (!pfvf->nixlf || blkaddr < 0)
		return NIX_AF_ERR_AF_LF_INVALID;

	nix_hw = FUNC1(rvu->hw, blkaddr);
	if (!nix_hw)
		return -EINVAL;

	cfg = (((u32)req->offset & 0x7) << 16) |
	      (((u32)req->y_mask & 0xF) << 12) |
	      (((u32)req->y_val & 0xF) << 8) |
	      (((u32)req->r_mask & 0xF) << 4) | ((u32)req->r_val & 0xF);

	rc = FUNC5(rvu, nix_hw, blkaddr, cfg);
	if (rc < 0) {
		FUNC0(rvu->dev, "No mark_format_ctl for (pf:%d, vf:%d)",
			FUNC3(pcifunc), pcifunc & RVU_PFVF_FUNC_MASK);
		return NIX_AF_ERR_MARK_CFG_FAIL;
	}

	rsp->mark_format_idx = rc;
	return 0;
}