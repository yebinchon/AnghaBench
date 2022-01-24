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
typedef  int /*<<< orphan*/  u16 ;
struct rvu_pfvf {int dummy; } ;
struct rvu_hwinfo {struct rvu_block* block; } ;
struct TYPE_4__ {int max; } ;
struct rvu_block {int /*<<< orphan*/  name; TYPE_2__ lf; int /*<<< orphan*/  type; } ;
struct rvu {int /*<<< orphan*/  dev; TYPE_1__* pdev; struct rvu_hwinfo* hw; } ;
struct rsrc_attach {int sso; int ssow; int timlfs; int cptlfs; scalar_t__ nixlf; scalar_t__ npalf; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t BLKADDR_CPT0 ; 
 size_t BLKADDR_NIX0 ; 
 size_t BLKADDR_NPA ; 
 size_t BLKADDR_SSO ; 
 size_t BLKADDR_SSOW ; 
 size_t BLKADDR_TIM ; 
 int /*<<< orphan*/  BLKTYPE_NIX ; 
 int /*<<< orphan*/  BLKTYPE_NPA ; 
 int EINVAL ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct rvu_pfvf* FUNC2 (struct rvu*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rvu_pfvf*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC5(struct rvu *rvu,
				       struct rsrc_attach *req, u16 pcifunc)
{
	struct rvu_pfvf *pfvf = FUNC2(rvu, pcifunc);
	struct rvu_hwinfo *hw = rvu->hw;
	struct rvu_block *block;
	int free_lfs, mappedlfs;

	/* Only one NPA LF can be attached */
	if (req->npalf && !FUNC3(pfvf, BLKTYPE_NPA)) {
		block = &hw->block[BLKADDR_NPA];
		free_lfs = FUNC4(&block->lf);
		if (!free_lfs)
			goto fail;
	} else if (req->npalf) {
		FUNC0(&rvu->pdev->dev,
			"Func 0x%x: Invalid req, already has NPA\n",
			 pcifunc);
		return -EINVAL;
	}

	/* Only one NIX LF can be attached */
	if (req->nixlf && !FUNC3(pfvf, BLKTYPE_NIX)) {
		block = &hw->block[BLKADDR_NIX0];
		free_lfs = FUNC4(&block->lf);
		if (!free_lfs)
			goto fail;
	} else if (req->nixlf) {
		FUNC0(&rvu->pdev->dev,
			"Func 0x%x: Invalid req, already has NIX\n",
			pcifunc);
		return -EINVAL;
	}

	if (req->sso) {
		block = &hw->block[BLKADDR_SSO];
		/* Is request within limits ? */
		if (req->sso > block->lf.max) {
			FUNC0(&rvu->pdev->dev,
				"Func 0x%x: Invalid SSO req, %d > max %d\n",
				 pcifunc, req->sso, block->lf.max);
			return -EINVAL;
		}
		mappedlfs = FUNC3(pfvf, block->type);
		free_lfs = FUNC4(&block->lf);
		/* Check if additional resources are available */
		if (req->sso > mappedlfs &&
		    ((req->sso - mappedlfs) > free_lfs))
			goto fail;
	}

	if (req->ssow) {
		block = &hw->block[BLKADDR_SSOW];
		if (req->ssow > block->lf.max) {
			FUNC0(&rvu->pdev->dev,
				"Func 0x%x: Invalid SSOW req, %d > max %d\n",
				 pcifunc, req->sso, block->lf.max);
			return -EINVAL;
		}
		mappedlfs = FUNC3(pfvf, block->type);
		free_lfs = FUNC4(&block->lf);
		if (req->ssow > mappedlfs &&
		    ((req->ssow - mappedlfs) > free_lfs))
			goto fail;
	}

	if (req->timlfs) {
		block = &hw->block[BLKADDR_TIM];
		if (req->timlfs > block->lf.max) {
			FUNC0(&rvu->pdev->dev,
				"Func 0x%x: Invalid TIMLF req, %d > max %d\n",
				 pcifunc, req->timlfs, block->lf.max);
			return -EINVAL;
		}
		mappedlfs = FUNC3(pfvf, block->type);
		free_lfs = FUNC4(&block->lf);
		if (req->timlfs > mappedlfs &&
		    ((req->timlfs - mappedlfs) > free_lfs))
			goto fail;
	}

	if (req->cptlfs) {
		block = &hw->block[BLKADDR_CPT0];
		if (req->cptlfs > block->lf.max) {
			FUNC0(&rvu->pdev->dev,
				"Func 0x%x: Invalid CPTLF req, %d > max %d\n",
				 pcifunc, req->cptlfs, block->lf.max);
			return -EINVAL;
		}
		mappedlfs = FUNC3(pfvf, block->type);
		free_lfs = FUNC4(&block->lf);
		if (req->cptlfs > mappedlfs &&
		    ((req->cptlfs - mappedlfs) > free_lfs))
			goto fail;
	}

	return 0;

fail:
	FUNC1(rvu->dev, "Request for %s failed\n", block->name);
	return -ENOSPC;
}