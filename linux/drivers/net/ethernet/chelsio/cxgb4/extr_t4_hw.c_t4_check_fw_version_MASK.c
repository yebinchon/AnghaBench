#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  fw_vers; int /*<<< orphan*/  chip; } ;
struct adapter {int /*<<< orphan*/  pdev_dev; int /*<<< orphan*/  chip; TYPE_1__ params; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
#define  CHELSIO_T4 130 
#define  CHELSIO_T5 129 
#define  CHELSIO_T6 128 
 int EAGAIN ; 
 int EBUSY ; 
 int EFAULT ; 
 int EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int T4FW_MIN_VERSION_MAJOR ; 
 int T4FW_MIN_VERSION_MICRO ; 
 int T4FW_MIN_VERSION_MINOR ; 
 int T5FW_MIN_VERSION_MAJOR ; 
 int T5FW_MIN_VERSION_MICRO ; 
 int T5FW_MIN_VERSION_MINOR ; 
 int T6FW_MIN_VERSION_MAJOR ; 
 int T6FW_MIN_VERSION_MICRO ; 
 int T6FW_MIN_VERSION_MINOR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC5 (struct adapter*,int /*<<< orphan*/ *) ; 

int FUNC6(struct adapter *adap)
{
	int i, ret, major, minor, micro;
	int exp_major, exp_minor, exp_micro;
	unsigned int chip_version = FUNC0(adap->params.chip);

	ret = FUNC5(adap, &adap->params.fw_vers);
	/* Try multiple times before returning error */
	for (i = 0; (ret == -EBUSY || ret == -EAGAIN) && i < 3; i++)
		ret = FUNC5(adap, &adap->params.fw_vers);

	if (ret)
		return ret;

	major = FUNC1(adap->params.fw_vers);
	minor = FUNC3(adap->params.fw_vers);
	micro = FUNC2(adap->params.fw_vers);

	switch (chip_version) {
	case CHELSIO_T4:
		exp_major = T4FW_MIN_VERSION_MAJOR;
		exp_minor = T4FW_MIN_VERSION_MINOR;
		exp_micro = T4FW_MIN_VERSION_MICRO;
		break;
	case CHELSIO_T5:
		exp_major = T5FW_MIN_VERSION_MAJOR;
		exp_minor = T5FW_MIN_VERSION_MINOR;
		exp_micro = T5FW_MIN_VERSION_MICRO;
		break;
	case CHELSIO_T6:
		exp_major = T6FW_MIN_VERSION_MAJOR;
		exp_minor = T6FW_MIN_VERSION_MINOR;
		exp_micro = T6FW_MIN_VERSION_MICRO;
		break;
	default:
		FUNC4(adap->pdev_dev, "Unsupported chip type, %x\n",
			adap->chip);
		return -EINVAL;
	}

	if (major < exp_major || (major == exp_major && minor < exp_minor) ||
	    (major == exp_major && minor == exp_minor && micro < exp_micro)) {
		FUNC4(adap->pdev_dev,
			"Card has firmware version %u.%u.%u, minimum "
			"supported firmware is %u.%u.%u.\n", major, minor,
			micro, exp_major, exp_minor, exp_micro);
		return -EFAULT;
	}
	return 0;
}