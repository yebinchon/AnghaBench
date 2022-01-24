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
struct rvu_hwinfo {int /*<<< orphan*/ * block; } ;
struct rvu {struct rvu_hwinfo* hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKTYPE_NPA ; 
 int FUNC0 (struct rvu*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct rvu *rvu)
{
	struct rvu_hwinfo *hw = rvu->hw;
	int blkaddr, err;

	blkaddr = FUNC1(rvu, BLKTYPE_NPA, 0);
	if (blkaddr < 0)
		return 0;

	/* Initialize admin queue */
	err = FUNC0(rvu, &hw->block[blkaddr]);
	if (err)
		return err;

	return 0;
}