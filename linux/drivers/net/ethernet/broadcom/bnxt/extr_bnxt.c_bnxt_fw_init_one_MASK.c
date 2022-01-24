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
struct bnxt {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int FUNC0 (struct bnxt*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct bnxt*) ; 
 int FUNC2 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC5(struct bnxt *bp)
{
	int rc;

	rc = FUNC1(bp);
	if (rc) {
		FUNC4(bp->dev, "Firmware init phase 1 failed\n");
		return rc;
	}
	rc = FUNC2(bp);
	if (rc) {
		FUNC4(bp->dev, "Firmware init phase 2 failed\n");
		return rc;
	}
	rc = FUNC0(bp, bp->dev->dev_addr, false);
	if (rc)
		return rc;
	FUNC3(bp);
	return 0;
}