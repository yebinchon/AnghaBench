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
 int EBUSY ; 
 int /*<<< orphan*/  EM28XX_AC97_XFER_TIMEOUT ; 
 int /*<<< orphan*/  EM28XX_R43_AC97BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct em28xx*,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (unsigned long) ; 

__attribute__((used)) static int FUNC5(struct em28xx *dev)
{
	unsigned long timeout = jiffies + FUNC2(EM28XX_AC97_XFER_TIMEOUT);
	int ret;

	/* Wait up to 50 ms for AC97 command to complete */
	while (FUNC4(timeout)) {
		ret = FUNC1(dev, EM28XX_R43_AC97BUSY);
		if (ret < 0)
			return ret;

		if (!(ret & 0x01))
			return 0;
		FUNC3(5);
	}

	FUNC0(&dev->intf->dev,
		 "AC97 command still being executed: not handled properly!\n");
	return -EBUSY;
}