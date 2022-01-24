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
struct cx25821_dev {TYPE_1__* channels; } ;
struct TYPE_2__ {int /*<<< orphan*/  hdl; int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_INT_MSK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct cx25821_dev *dev, int chan_num)
{
	FUNC0(PCI_INT_MSK, 1);

	if (FUNC2(&dev->channels[chan_num].vdev)) {
		FUNC3(&dev->channels[chan_num].vdev);
		FUNC1(&dev->channels[chan_num].hdl);
	}
}