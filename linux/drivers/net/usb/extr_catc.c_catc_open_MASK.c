#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct catc {int /*<<< orphan*/  timer; int /*<<< orphan*/  is_f5u011; TYPE_1__* usbdev; TYPE_2__* irq_urb; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ STATS_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct catc* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev)
{
	struct catc *catc = FUNC2(netdev);
	int status;

	catc->irq_urb->dev = catc->usbdev;
	if ((status = FUNC4(catc->irq_urb, GFP_KERNEL)) < 0) {
		FUNC0(&catc->usbdev->dev, "submit(irq_urb) status %d\n",
			status);
		return -1;
	}

	FUNC3(netdev);

	if (!catc->is_f5u011)
		FUNC1(&catc->timer, jiffies + STATS_UPDATE);

	return 0;
}