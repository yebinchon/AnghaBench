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
struct rvu_pfvf {int /*<<< orphan*/  nixlf; } ;
struct rvu {int /*<<< orphan*/  hw; } ;
struct nix_lso_format_cfg_rsp {int lso_format_idx; } ;
struct TYPE_3__ {int /*<<< orphan*/  pcifunc; } ;
struct nix_lso_format_cfg {int* fields; int field_mask; TYPE_1__ hdr; } ;
struct TYPE_4__ {int in_use; int total; } ;
struct nix_hw {TYPE_2__ lso; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKTYPE_NIX ; 
 int EINVAL ; 
 int NIX_AF_ERR_AF_LF_INVALID ; 
 int NIX_AF_ERR_LSO_CFG_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int NIX_LSO_FIELD_MAX ; 
 struct nix_hw* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rvu_pfvf* FUNC3 (struct rvu*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rvu*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rvu*,int,int /*<<< orphan*/ ,int) ; 

int FUNC6(struct rvu *rvu,
					struct nix_lso_format_cfg *req,
					struct nix_lso_format_cfg_rsp *rsp)
{
	u16 pcifunc = req->hdr.pcifunc;
	struct nix_hw *nix_hw;
	struct rvu_pfvf *pfvf;
	int blkaddr, idx, f;
	u64 reg;

	pfvf = FUNC3(rvu, pcifunc);
	blkaddr = FUNC2(rvu, BLKTYPE_NIX, pcifunc);
	if (!pfvf->nixlf || blkaddr < 0)
		return NIX_AF_ERR_AF_LF_INVALID;

	nix_hw = FUNC1(rvu->hw, blkaddr);
	if (!nix_hw)
		return -EINVAL;

	/* Find existing matching LSO format, if any */
	for (idx = 0; idx < nix_hw->lso.in_use; idx++) {
		for (f = 0; f < NIX_LSO_FIELD_MAX; f++) {
			reg = FUNC4(rvu, blkaddr,
					 FUNC0(idx, f));
			if (req->fields[f] != (reg & req->field_mask))
				break;
		}

		if (f == NIX_LSO_FIELD_MAX)
			break;
	}

	if (idx < nix_hw->lso.in_use) {
		/* Match found */
		rsp->lso_format_idx = idx;
		return 0;
	}

	if (nix_hw->lso.in_use == nix_hw->lso.total)
		return NIX_AF_ERR_LSO_CFG_FAIL;

	rsp->lso_format_idx = nix_hw->lso.in_use++;

	for (f = 0; f < NIX_LSO_FIELD_MAX; f++)
		FUNC5(rvu, blkaddr,
			    FUNC0(rsp->lso_format_idx, f),
			    req->fields[f]);

	return 0;
}