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
typedef  int /*<<< orphan*/  u8 ;
struct si4713_device {scalar_t__ power_state; int /*<<< orphan*/  sd; scalar_t__ vio; scalar_t__ vdd; scalar_t__ gpio_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DEFAULT_TIMEOUT ; 
 scalar_t__ POWER_OFF ; 
 int /*<<< orphan*/  SI4713_CMD_POWER_DOWN ; 
 int SI4713_PWDN_NRESP ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (struct si4713_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC6(struct si4713_device *sdev)
{
	int err;
	u8 resp[SI4713_PWDN_NRESP];

	if (!sdev->power_state)
		return 0;

	err = FUNC3(sdev, SI4713_CMD_POWER_DOWN,
					NULL, 0,
					resp, FUNC0(resp),
					DEFAULT_TIMEOUT);

	if (!err) {
		FUNC4(1, debug, &sdev->sd, "Power down response: 0x%02x\n",
				resp[0]);
		FUNC4(1, debug, &sdev->sd, "Device in reset mode\n");
		if (sdev->gpio_reset)
			FUNC1(sdev->gpio_reset, 0);

		if (sdev->vdd) {
			err = FUNC2(sdev->vdd);
			if (err) {
				FUNC5(&sdev->sd,
					"Failed to disable vdd: %d\n", err);
			}
		}

		if (sdev->vio) {
			err = FUNC2(sdev->vio);
			if (err) {
				FUNC5(&sdev->sd,
					"Failed to disable vio: %d\n", err);
			}
		}
		sdev->power_state = POWER_OFF;
	}

	return err;
}