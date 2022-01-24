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
struct bnxt {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct bnxt*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC3(struct bnxt *bp, bool irq_re_init, bool link_re_init)
{
	int rc = 0;

	rc = FUNC0(bp, irq_re_init, link_re_init);
	if (rc) {
		FUNC2(bp->dev, "nic open fail (rc: %x)\n", rc);
		FUNC1(bp->dev);
	}
	return rc;
}