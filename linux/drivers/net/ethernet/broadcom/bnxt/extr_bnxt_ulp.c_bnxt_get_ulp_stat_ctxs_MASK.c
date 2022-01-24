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
struct bnxt {int /*<<< orphan*/  edev; } ;

/* Variables and functions */
 int BNXT_MIN_ROCE_STAT_CTXS ; 
 int /*<<< orphan*/  BNXT_ROCE_ULP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(struct bnxt *bp)
{
	if (FUNC0(bp->edev, BNXT_ROCE_ULP))
		return BNXT_MIN_ROCE_STAT_CTXS;

	return 0;
}