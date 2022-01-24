#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct phy_device {int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; int /*<<< orphan*/  advertising; int /*<<< orphan*/  lp_advertising; } ;
struct TYPE_3__ {int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; int /*<<< orphan*/  bit; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  common ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*) ; 
 TYPE_1__* settings ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct phy_device *phydev)
{
	FUNC1(common);
	int i;

	FUNC2(common, phydev->lp_advertising, phydev->advertising);

	for (i = 0; i < FUNC0(settings); i++)
		if (FUNC4(settings[i].bit, common)) {
			phydev->speed = settings[i].speed;
			phydev->duplex = settings[i].duplex;
			break;
		}

	FUNC3(phydev);
}