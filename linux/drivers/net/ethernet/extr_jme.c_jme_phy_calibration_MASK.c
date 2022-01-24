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
struct jme_adapter {TYPE_1__ mii_if; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int JM_PHY_EXT_COMM_2_CALI_ENABLE ; 
 int JM_PHY_EXT_COMM_2_CALI_LATCH ; 
 int JM_PHY_EXT_COMM_2_CALI_MODE_0 ; 
 int /*<<< orphan*/  JM_PHY_EXT_COMM_2_REG ; 
 int /*<<< orphan*/  MII_CTRL1000 ; 
 int PHY_GAD_TEST_MODE_1 ; 
 int PHY_GAD_TEST_MODE_MSK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct jme_adapter*) ; 
 int FUNC4 (struct jme_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct jme_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(struct jme_adapter *jme)
{
	u32 ctrl1000, phy_data;

	FUNC2(jme);
	FUNC3(jme);
	/*  Enabel PHY test mode 1 */
	ctrl1000 = FUNC0(jme->dev, jme->mii_if.phy_id, MII_CTRL1000);
	ctrl1000 &= ~PHY_GAD_TEST_MODE_MSK;
	ctrl1000 |= PHY_GAD_TEST_MODE_1;
	FUNC1(jme->dev, jme->mii_if.phy_id, MII_CTRL1000, ctrl1000);

	phy_data = FUNC4(jme, JM_PHY_EXT_COMM_2_REG);
	phy_data &= ~JM_PHY_EXT_COMM_2_CALI_MODE_0;
	phy_data |= JM_PHY_EXT_COMM_2_CALI_LATCH |
			JM_PHY_EXT_COMM_2_CALI_ENABLE;
	FUNC5(jme, JM_PHY_EXT_COMM_2_REG, phy_data);
	FUNC6(20);
	phy_data = FUNC4(jme, JM_PHY_EXT_COMM_2_REG);
	phy_data &= ~(JM_PHY_EXT_COMM_2_CALI_ENABLE |
			JM_PHY_EXT_COMM_2_CALI_MODE_0 |
			JM_PHY_EXT_COMM_2_CALI_LATCH);
	FUNC5(jme, JM_PHY_EXT_COMM_2_REG, phy_data);

	/*  Disable PHY test mode */
	ctrl1000 = FUNC0(jme->dev, jme->mii_if.phy_id, MII_CTRL1000);
	ctrl1000 &= ~PHY_GAD_TEST_MODE_MSK;
	FUNC1(jme->dev, jme->mii_if.phy_id, MII_CTRL1000, ctrl1000);
	return 0;
}