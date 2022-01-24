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
 int /*<<< orphan*/  BCM87XX_LASI_STATUS ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*,char*,int) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev)
{
	int reg;

	reg = FUNC0(phydev, BCM87XX_LASI_STATUS);

	if (reg < 0) {
		FUNC1(phydev,
			   "Error: Read of BCM87XX_LASI_STATUS failed: %d\n",
			   reg);
		return 0;
	}
	return (reg & 1) != 0;
}