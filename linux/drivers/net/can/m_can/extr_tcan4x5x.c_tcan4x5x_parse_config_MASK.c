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
struct tcan4x5x_priv {int /*<<< orphan*/  power; int /*<<< orphan*/ * device_state_gpio; int /*<<< orphan*/ * reset_gpio; int /*<<< orphan*/ * device_wake_gpio; } ;
struct m_can_classdev {int /*<<< orphan*/  dev; struct tcan4x5x_priv* device_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct m_can_classdev *cdev)
{
	struct tcan4x5x_priv *tcan4x5x = cdev->device_data;

	tcan4x5x->device_wake_gpio = FUNC3(cdev->dev, "device-wake",
						    GPIOD_OUT_HIGH);
	if (FUNC0(tcan4x5x->device_wake_gpio)) {
		FUNC2(cdev->dev, "device-wake gpio not defined\n");
		return -EINVAL;
	}

	tcan4x5x->reset_gpio = FUNC4(cdev->dev, "reset",
						       GPIOD_OUT_LOW);
	if (FUNC0(tcan4x5x->reset_gpio))
		tcan4x5x->reset_gpio = NULL;

	tcan4x5x->device_state_gpio = FUNC4(cdev->dev,
							      "device-state",
							      GPIOD_IN);
	if (FUNC0(tcan4x5x->device_state_gpio))
		tcan4x5x->device_state_gpio = NULL;

	tcan4x5x->power = FUNC5(cdev->dev,
						      "vsup");
	if (FUNC1(tcan4x5x->power) == -EPROBE_DEFER)
		return -EPROBE_DEFER;

	return 0;
}