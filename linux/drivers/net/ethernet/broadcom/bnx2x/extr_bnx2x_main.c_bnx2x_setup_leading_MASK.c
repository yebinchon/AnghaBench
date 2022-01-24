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
struct bnx2x {int /*<<< orphan*/ * fp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int FUNC1 (struct bnx2x*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct bnx2x*,int /*<<< orphan*/ *,int) ; 

int FUNC3(struct bnx2x *bp)
{
	if (FUNC0(bp))
		return FUNC1(bp, &bp->fp[0], true);
	else /* VF */
		return FUNC2(bp, &bp->fp[0], true);
}