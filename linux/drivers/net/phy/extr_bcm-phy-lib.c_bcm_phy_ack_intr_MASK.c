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
struct phy_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_BCM54XX_ISR ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 

int FUNC1(struct phy_device *phydev)
{
	int reg;

	/* Clear pending interrupts.  */
	reg = FUNC0(phydev, MII_BCM54XX_ISR);
	if (reg < 0)
		return reg;

	return 0;
}