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
struct bnxt {int cp_nr_rings; } ;

/* Variables and functions */
 int FUNC0 (struct bnxt*) ; 
 int FUNC1 (struct bnxt*) ; 

int FUNC2(struct bnxt *bp)
{
	int cp = bp->cp_nr_rings;
	int ulp_msix, ulp_base;

	ulp_msix = FUNC1(bp);
	if (ulp_msix) {
		ulp_base = FUNC0(bp);
		cp += ulp_msix;
		if ((ulp_base + ulp_msix) > cp)
			cp = ulp_base + ulp_msix;
	}
	return cp;
}