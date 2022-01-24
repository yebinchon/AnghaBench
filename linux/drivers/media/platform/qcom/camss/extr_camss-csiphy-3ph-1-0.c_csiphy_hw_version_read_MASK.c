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
typedef  int u32 ;
struct device {int dummy; } ;
struct csiphy_device {scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_SHOW_REV_ID ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct csiphy_device *csiphy,
				   struct device *dev)
{
	u32 hw_version;

	FUNC4(CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_SHOW_REV_ID,
	       csiphy->base + FUNC0(6));

	hw_version = FUNC3(csiphy->base +
				   FUNC1(12));
	hw_version |= FUNC3(csiphy->base +
				   FUNC1(13)) << 8;
	hw_version |= FUNC3(csiphy->base +
				   FUNC1(14)) << 16;
	hw_version |= FUNC3(csiphy->base +
				   FUNC1(15)) << 24;

	FUNC2(dev, "CSIPHY 3PH HW Version = 0x%08x\n", hw_version);
}