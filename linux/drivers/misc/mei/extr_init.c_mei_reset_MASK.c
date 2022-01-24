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
struct mei_device {int dev_state; scalar_t__ reset_count; int /*<<< orphan*/  dev; int /*<<< orphan*/  rd_msg_hdr; } ;
typedef  enum mei_dev_state { ____Placeholder_mei_dev_state } mei_dev_state ;

/* Variables and functions */
 int ENODEV ; 
 int MEI_DEV_DISABLED ; 
 int MEI_DEV_INITIALIZING ; 
 int MEI_DEV_INIT_CLIENTS ; 
 int MEI_DEV_POWER_DOWN ; 
 int MEI_DEV_POWER_UP ; 
 int MEI_DEV_RESETTING ; 
 int MEI_FW_STATUS_STR_SZ ; 
 scalar_t__ MEI_MAX_CONSEC_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct mei_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct mei_device*) ; 
 int FUNC9 (struct mei_device*) ; 
 int FUNC10 (struct mei_device*,int) ; 
 int FUNC11 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct mei_device*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC14(struct mei_device *dev)
{
	enum mei_dev_state state = dev->dev_state;
	bool interrupts_enabled;
	int ret;

	if (state != MEI_DEV_INITIALIZING &&
	    state != MEI_DEV_DISABLED &&
	    state != MEI_DEV_POWER_DOWN &&
	    state != MEI_DEV_POWER_UP) {
		char fw_sts_str[MEI_FW_STATUS_STR_SZ];

		FUNC6(dev, fw_sts_str, MEI_FW_STATUS_STR_SZ);
		FUNC2(dev->dev, "unexpected reset: dev_state = %s fw status = %s\n",
			 FUNC5(state), fw_sts_str);
	}

	FUNC4(dev);

	/* we're already in reset, cancel the init timer
	 * if the reset was called due the hbm protocol error
	 * we need to call it before hw start
	 * so the hbm watchdog won't kick in
	 */
	FUNC7(dev);

	/* enter reset flow */
	interrupts_enabled = state != MEI_DEV_POWER_DOWN;
	FUNC12(dev, MEI_DEV_RESETTING);

	dev->reset_count++;
	if (dev->reset_count > MEI_MAX_CONSEC_RESET) {
		FUNC1(dev->dev, "reset: reached maximal consecutive resets: disabling the device\n");
		FUNC12(dev, MEI_DEV_DISABLED);
		return -ENODEV;
	}

	ret = FUNC10(dev, interrupts_enabled);
	/* fall through and remove the sw state even if hw reset has failed */

	/* no need to clean up software state in case of power up */
	if (state != MEI_DEV_INITIALIZING && state != MEI_DEV_POWER_UP)
		FUNC3(dev);

	FUNC8(dev);

	FUNC13(dev->rd_msg_hdr, 0, sizeof(dev->rd_msg_hdr));

	if (ret) {
		FUNC1(dev->dev, "hw_reset failed ret = %d\n", ret);
		return ret;
	}

	if (state == MEI_DEV_POWER_DOWN) {
		FUNC0(dev->dev, "powering down: end of reset\n");
		FUNC12(dev, MEI_DEV_DISABLED);
		return 0;
	}

	ret = FUNC11(dev);
	if (ret) {
		FUNC1(dev->dev, "hw_start failed ret = %d\n", ret);
		return ret;
	}

	FUNC0(dev->dev, "link is established start sending messages.\n");

	FUNC12(dev, MEI_DEV_INIT_CLIENTS);
	ret = FUNC9(dev);
	if (ret) {
		FUNC1(dev->dev, "hbm_start failed ret = %d\n", ret);
		FUNC12(dev, MEI_DEV_RESETTING);
		return ret;
	}

	return 0;
}