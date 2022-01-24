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
struct em28xx {TYPE_1__* intf; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_POWERDOWN ; 
 int /*<<< orphan*/  AC97_RESET ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct em28xx*,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (unsigned long) ; 

__attribute__((used)) static int FUNC5(struct em28xx *dev,
						  int expected_feat)
{
	unsigned long timeout = jiffies + FUNC2(2000);
	int feat, powerdown;

	while (FUNC4(timeout)) {
		feat = FUNC1(dev, AC97_RESET);
		if (feat < 0)
			return feat;

		powerdown = FUNC1(dev, AC97_POWERDOWN);
		if (powerdown < 0)
			return powerdown;

		if (feat == expected_feat && feat != powerdown)
			return 0;

		FUNC3(50);
	}

	FUNC0(&dev->intf->dev, "AC97 registers access is not reliable !\n");
	return -ETIMEDOUT;
}