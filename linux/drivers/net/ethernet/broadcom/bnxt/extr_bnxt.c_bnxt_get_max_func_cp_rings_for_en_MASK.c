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
struct TYPE_2__ {unsigned int max_cp_rings; } ;
struct bnxt {int flags; TYPE_1__ hw_resc; } ;

/* Variables and functions */
 int BNXT_FLAG_CHIP_P5 ; 
 scalar_t__ FUNC0 (struct bnxt*) ; 

__attribute__((used)) static unsigned int FUNC1(struct bnxt *bp)
{
	unsigned int cp = bp->hw_resc.max_cp_rings;

	if (!(bp->flags & BNXT_FLAG_CHIP_P5))
		cp -= FUNC0(bp);

	return cp;
}