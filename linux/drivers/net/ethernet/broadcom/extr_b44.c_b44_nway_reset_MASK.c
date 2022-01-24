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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct b44 {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int BMCR_ANENABLE ; 
 int BMCR_ANRESTART ; 
 int EINVAL ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  FUNC0 (struct b44*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct b44*,int /*<<< orphan*/ ,int) ; 
 struct b44* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
	struct b44 *bp = FUNC2(dev);
	u32 bmcr;
	int r;

	FUNC3(&bp->lock);
	FUNC0(bp, MII_BMCR, &bmcr);
	FUNC0(bp, MII_BMCR, &bmcr);
	r = -EINVAL;
	if (bmcr & BMCR_ANENABLE) {
		FUNC1(bp, MII_BMCR,
			     bmcr | BMCR_ANRESTART);
		r = 0;
	}
	FUNC4(&bp->lock);

	return r;
}