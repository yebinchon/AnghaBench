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
struct phy_device {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct phy_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*) ; 

void FUNC2(struct phy_device *phydev)
{
	FUNC1(phydev);
	FUNC0(phydev->irq, phydev);
}