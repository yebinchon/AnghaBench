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
struct mt7615_dev {int ofdm_sensitivity; int cck_sensitivity; int /*<<< orphan*/  last_cca_adj; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_WF_PHY_B0_MIN_PRI_PWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MT_WF_PHY_B0_PD_CCK_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  MT_WF_PHY_B0_PD_OFDM_MASK ; 
 int /*<<< orphan*/  MT_WF_PHY_B0_RXTD_CCK_PD ; 
 int /*<<< orphan*/  MT_WF_PHY_B1_MIN_PRI_PWR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  MT_WF_PHY_B1_PD_CCK_MASK ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  MT_WF_PHY_B1_PD_OFDM_MASK ; 
 int /*<<< orphan*/  MT_WF_PHY_B1_RXTD_CCK_PD ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct mt7615_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct mt7615_dev *dev)
{
	FUNC4(dev, MT_WF_PHY_B0_MIN_PRI_PWR,
		 MT_WF_PHY_B0_PD_OFDM_MASK,
		 FUNC1(0x13c));
	FUNC4(dev, MT_WF_PHY_B1_MIN_PRI_PWR,
		 MT_WF_PHY_B1_PD_OFDM_MASK,
		 FUNC3(0x13c));

	FUNC4(dev, MT_WF_PHY_B0_RXTD_CCK_PD,
		 MT_WF_PHY_B0_PD_CCK_MASK,
		 FUNC0(0x92));
	FUNC4(dev, MT_WF_PHY_B1_RXTD_CCK_PD,
		 MT_WF_PHY_B1_PD_CCK_MASK,
		 FUNC2(0x92));

	dev->ofdm_sensitivity = -98;
	dev->cck_sensitivity = -110;
	dev->last_cca_adj = jiffies;
}