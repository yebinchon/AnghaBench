#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct rvu_pfvf {int /*<<< orphan*/  nixlf; } ;
struct rvu_hwinfo {int /*<<< orphan*/ * block; } ;
struct rvu {struct rvu_hwinfo* hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKTYPE_NIX ; 
 int NIX_AF_ERR_AF_LF_INVALID ; 
 int FUNC0 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rvu*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rvu_pfvf* FUNC2 (struct rvu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct rvu *rvu, u16 pcifunc, int *nixlf)
{
	struct rvu_pfvf *pfvf = FUNC2(rvu, pcifunc);
	struct rvu_hwinfo *hw = rvu->hw;
	int blkaddr;

	blkaddr = FUNC0(rvu, BLKTYPE_NIX, pcifunc);
	if (!pfvf->nixlf || blkaddr < 0)
		return NIX_AF_ERR_AF_LF_INVALID;

	*nixlf = FUNC1(rvu, &hw->block[blkaddr], pcifunc, 0);
	if (*nixlf < 0)
		return NIX_AF_ERR_AF_LF_INVALID;

	return 0;
}