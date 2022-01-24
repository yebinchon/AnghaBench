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
typedef  int /*<<< orphan*/  u16 ;
struct phy_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSCC_EXT_PAGE_ACCESS ; 
 int /*<<< orphan*/  MSCC_PHY_PAGE_EXTENDED ; 
 int /*<<< orphan*/  MSCC_PHY_PAGE_STANDARD ; 
 int /*<<< orphan*/  MSCC_PHY_VERIPHY_CNTL_2 ; 
 int /*<<< orphan*/  MSCC_PHY_VERIPHY_CNTL_3 ; 
 int /*<<< orphan*/  PROC_CMD_CRC16 ; 
 int /*<<< orphan*/  FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct phy_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct phy_device *phydev, u16 start, u16 size,
			      u16 *crc)
{
	int ret;

	FUNC1(phydev, MSCC_EXT_PAGE_ACCESS, MSCC_PHY_PAGE_EXTENDED);

	FUNC1(phydev, MSCC_PHY_VERIPHY_CNTL_2, start);
	FUNC1(phydev, MSCC_PHY_VERIPHY_CNTL_3, size);

	/* Start Micro command */
	ret = FUNC2(phydev, PROC_CMD_CRC16);
	if (ret)
		goto out;

	FUNC1(phydev, MSCC_EXT_PAGE_ACCESS, MSCC_PHY_PAGE_EXTENDED);

	*crc = FUNC0(phydev, MSCC_PHY_VERIPHY_CNTL_2);

out:
	FUNC1(phydev, MSCC_EXT_PAGE_ACCESS, MSCC_PHY_PAGE_STANDARD);

	return ret;
}