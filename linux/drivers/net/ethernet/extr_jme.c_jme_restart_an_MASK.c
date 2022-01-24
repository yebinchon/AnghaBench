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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  phy_id; } ;
struct jme_adapter {int /*<<< orphan*/  phy_lock; TYPE_1__ mii_if; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BMCR_ANENABLE ; 
 int BMCR_ANRESTART ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct jme_adapter *jme)
{
	u32 bmcr;

	FUNC2(&jme->phy_lock);
	bmcr = FUNC0(jme->dev, jme->mii_if.phy_id, MII_BMCR);
	bmcr |= (BMCR_ANENABLE | BMCR_ANRESTART);
	FUNC1(jme->dev, jme->mii_if.phy_id, MII_BMCR, bmcr);
	FUNC3(&jme->phy_lock);
}