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
struct TYPE_2__ {scalar_t__ int_block; } ;
struct bnx2x {TYPE_1__ common; } ;

/* Variables and functions */
 scalar_t__ INT_BLOCK_HC ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 

void FUNC2(struct bnx2x *bp)
{
	if (bp->common.int_block == INT_BLOCK_HC)
		FUNC0(bp);
	else
		FUNC1(bp);
}