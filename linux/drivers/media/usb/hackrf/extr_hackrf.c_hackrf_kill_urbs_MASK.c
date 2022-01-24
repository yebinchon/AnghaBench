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
struct hackrf_dev {int urbs_submitted; int /*<<< orphan*/ * urb_list; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct hackrf_dev *dev)
{
	int i;

	for (i = dev->urbs_submitted - 1; i >= 0; i--) {
		FUNC0(dev->dev, "kill urb=%d\n", i);
		/* stop the URB */
		FUNC1(dev->urb_list[i]);
	}
	dev->urbs_submitted = 0;

	return 0;
}