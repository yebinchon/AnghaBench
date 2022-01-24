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
struct jme_adapter {scalar_t__ fpgaver; TYPE_1__ mii_if; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BMCR_ANENABLE ; 
 int BMCR_FULLDPLX ; 
 int BMCR_SPEED100 ; 
 int BMCR_SPEED1000 ; 
 int GHC_LINK_POLL ; 
 int GHC_SPEED_100M ; 
 int /*<<< orphan*/  JME_GHC ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct jme_adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct jme_adapter *jme)
{
	u32 bmcr, tmp;

	FUNC2(jme);
	bmcr = FUNC0(jme->dev, jme->mii_if.phy_id, MII_BMCR);
	tmp = bmcr & ~(BMCR_ANENABLE | BMCR_SPEED100 |
		       BMCR_SPEED1000 | BMCR_FULLDPLX);
	tmp |= BMCR_SPEED100;

	if (bmcr != tmp)
		FUNC1(jme->dev, jme->mii_if.phy_id, MII_BMCR, tmp);

	if (jme->fpgaver)
		FUNC3(jme, JME_GHC, GHC_SPEED_100M | GHC_LINK_POLL);
	else
		FUNC3(jme, JME_GHC, GHC_SPEED_100M);
}