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
struct phy_device {void* irq; } ;

/* Variables and functions */
 int IRQF_ONESHOT ; 
 int IRQF_SHARED ; 
 void* PHY_POLL ; 
 scalar_t__ FUNC0 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*) ; 
 int /*<<< orphan*/  phy_interrupt ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*,char*,...) ; 
 int FUNC4 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct phy_device*) ; 

void FUNC5(struct phy_device *phydev)
{
	int err;

	err = FUNC4(phydev->irq, NULL, phy_interrupt,
				   IRQF_ONESHOT | IRQF_SHARED,
				   FUNC2(phydev), phydev);
	if (err) {
		FUNC3(phydev, "Error %d requesting IRQ %d, falling back to polling\n",
			    err, phydev->irq);
		phydev->irq = PHY_POLL;
	} else {
		if (FUNC0(phydev)) {
			FUNC3(phydev, "Can't enable interrupt, falling back to polling\n");
			FUNC1(phydev);
			phydev->irq = PHY_POLL;
		}
	}
}