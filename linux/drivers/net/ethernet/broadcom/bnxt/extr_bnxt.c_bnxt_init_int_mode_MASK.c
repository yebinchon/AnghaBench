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
struct bnxt {int flags; } ;

/* Variables and functions */
 int BNXT_FLAG_MSIX_CAP ; 
 int BNXT_FLAG_USING_MSIX ; 
 scalar_t__ FUNC0 (struct bnxt*) ; 
 int FUNC1 (struct bnxt*) ; 
 int FUNC2 (struct bnxt*) ; 

__attribute__((used)) static int FUNC3(struct bnxt *bp)
{
	int rc = 0;

	if (bp->flags & BNXT_FLAG_MSIX_CAP)
		rc = FUNC2(bp);

	if (!(bp->flags & BNXT_FLAG_USING_MSIX) && FUNC0(bp)) {
		/* fallback to INTA */
		rc = FUNC1(bp);
	}
	return rc;
}