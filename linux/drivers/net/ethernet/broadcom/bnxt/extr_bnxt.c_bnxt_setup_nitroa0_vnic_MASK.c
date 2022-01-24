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
struct bnxt {int /*<<< orphan*/  dev; scalar_t__ rx_nr_rings; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct bnxt*,int,scalar_t__,int) ; 
 unsigned int FUNC1 (struct bnxt*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct bnxt *bp)
{
	unsigned int rc = 0;

	rc = FUNC0(bp, 1, bp->rx_nr_rings - 1, 1);
	if (rc) {
		FUNC2(bp->dev, "Cannot allocate special vnic for NS2 A0: %x\n",
			   rc);
		return rc;
	}

	rc = FUNC1(bp, 1);
	if (rc) {
		FUNC2(bp->dev, "Cannot allocate special vnic for NS2 A0: %x\n",
			   rc);
		return rc;
	}
	return rc;
}