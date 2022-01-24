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
typedef  scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct bnxt {int hwrm_spec_code; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNXT_FW_RESET_AP ; 
 int /*<<< orphan*/  BNXT_FW_RESET_CHIP ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt*) ; 
 int EBUSY ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ ETH_RESET_ALL ; 
 scalar_t__ ETH_RESET_AP ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 struct bnxt* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, u32 *flags)
{
	struct bnxt *bp = FUNC4(dev);
	int rc = 0;

	if (!FUNC0(bp)) {
		FUNC2(dev, "Reset is not supported from a VF\n");
		return -EOPNOTSUPP;
	}

	if (FUNC5(bp->pdev)) {
		FUNC2(dev,
			   "Reset not allowed when VFs are assigned to VMs\n");
		return -EBUSY;
	}

	if (*flags == ETH_RESET_ALL) {
		/* This feature is not supported in older firmware versions */
		if (bp->hwrm_spec_code < 0x10803)
			return -EOPNOTSUPP;

		rc = FUNC1(dev, BNXT_FW_RESET_CHIP);
		if (!rc) {
			FUNC3(dev, "Reset request successful. Reload driver to complete reset\n");
			*flags = 0;
		}
	} else if (*flags == ETH_RESET_AP) {
		/* This feature is not supported in older firmware versions */
		if (bp->hwrm_spec_code < 0x10803)
			return -EOPNOTSUPP;

		rc = FUNC1(dev, BNXT_FW_RESET_AP);
		if (!rc) {
			FUNC3(dev, "Reset Application Processor request successful.\n");
			*flags = 0;
		}
	} else {
		rc = -EINVAL;
	}

	return rc;
}