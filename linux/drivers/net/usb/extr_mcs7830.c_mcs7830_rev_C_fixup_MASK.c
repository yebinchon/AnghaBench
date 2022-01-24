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
typedef  int /*<<< orphan*/  u8 ;
struct usbnet {TYPE_1__* udev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HIF_REG_PAUSE_THRESHOLD ; 
 int /*<<< orphan*/  HIF_REG_PAUSE_THRESHOLD_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct usbnet *dev)
{
	u8 pause_threshold = HIF_REG_PAUSE_THRESHOLD_DEFAULT;
	int retry;

	for (retry = 0; retry < 2; retry++) {
		if (FUNC1(dev) == 2) {
			FUNC0(&dev->udev->dev, "applying rev.C fixup\n");
			FUNC2(dev, HIF_REG_PAUSE_THRESHOLD,
					1, &pause_threshold);
		}
		FUNC3(1);
	}
}