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
struct hva_dev {scalar_t__ regs; int /*<<< orphan*/  protect_mutex; } ;
struct device {int dummy; } ;

/* Variables and functions */
 unsigned long EFAULT ; 
 scalar_t__ HVA_HIF_REG_VERSION ; 
 int /*<<< orphan*/  HVA_PREFIX ; 
 unsigned long HVA_VERSION_UNKNOWN ; 
#define  HVA_VERSION_V400 128 
 unsigned long VERSION_ID_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,...) ; 
 struct device* FUNC2 (struct hva_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 unsigned long FUNC6 (scalar_t__) ; 

__attribute__((used)) static unsigned long int FUNC7(struct hva_dev *hva)
{
	struct device *dev = FUNC2(hva);
	unsigned long int version;

	if (FUNC4(dev) < 0) {
		FUNC1(dev, "%s     failed to get pm_runtime\n", HVA_PREFIX);
		FUNC3(&hva->protect_mutex);
		return -EFAULT;
	}

	version = FUNC6(hva->regs + HVA_HIF_REG_VERSION) &
				VERSION_ID_MASK;

	FUNC5(dev);

	switch (version) {
	case HVA_VERSION_V400:
		FUNC0(dev, "%s     IP hardware version 0x%lx\n",
			HVA_PREFIX, version);
		break;
	default:
		FUNC1(dev, "%s     unknown IP hardware version 0x%lx\n",
			HVA_PREFIX, version);
		version = HVA_VERSION_UNKNOWN;
		break;
	}

	return version;
}