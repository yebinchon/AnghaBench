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
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*) ; 

__attribute__((used)) static int FUNC3(struct phy_device *phydev)
{
	int rc;

	FUNC2(phydev);

	/* Re-initialize the PHY to apply AFE work-arounds and
	 * configurations when coming out of suspend.
	 */
	rc = FUNC0(phydev);
	if (rc)
		return rc;

	/* restart auto negotiation with the new settings */
	return FUNC1(phydev);
}