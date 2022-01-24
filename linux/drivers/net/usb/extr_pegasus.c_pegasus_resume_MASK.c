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
struct usb_interface {int dummy; } ;
struct pegasus {int /*<<< orphan*/  carrier_check; TYPE_2__* intr_urb; TYPE_1__* rx_urb; int /*<<< orphan*/  net; } ;
struct TYPE_4__ {scalar_t__ actual_length; scalar_t__ status; } ;
struct TYPE_3__ {scalar_t__ actual_length; scalar_t__ status; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARRIER_CHECK_DELAY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pegasus_workqueue ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 struct pegasus* FUNC5 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC6(struct usb_interface *intf)
{
	struct pegasus *pegasus = FUNC5(intf);

	FUNC1(pegasus->net);
	if (FUNC2(pegasus->net)) {
		pegasus->rx_urb->status = 0;
		pegasus->rx_urb->actual_length = 0;
		FUNC4(pegasus->rx_urb);

		pegasus->intr_urb->status = 0;
		pegasus->intr_urb->actual_length = 0;
		FUNC0(pegasus->intr_urb);
	}
	FUNC3(pegasus_workqueue, &pegasus->carrier_check,
				CARRIER_CHECK_DELAY);
	return 0;
}