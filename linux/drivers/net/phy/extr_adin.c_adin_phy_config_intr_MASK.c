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
struct phy_device {scalar_t__ interrupts; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADIN1300_INT_MASK_EN ; 
 int /*<<< orphan*/  ADIN1300_INT_MASK_REG ; 
 scalar_t__ PHY_INTERRUPT_ENABLED ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev)
{
	if (phydev->interrupts == PHY_INTERRUPT_ENABLED)
		return FUNC1(phydev, ADIN1300_INT_MASK_REG,
				    ADIN1300_INT_MASK_EN);

	return FUNC0(phydev, ADIN1300_INT_MASK_REG,
			      ADIN1300_INT_MASK_EN);
}