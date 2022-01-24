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
struct usb_interface {int dummy; } ;
struct iguanair {int /*<<< orphan*/  lock; int /*<<< orphan*/  urb_out; int /*<<< orphan*/  urb_in; int /*<<< orphan*/  dev; scalar_t__ receiver_on; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct iguanair*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct iguanair* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct usb_interface *intf, pm_message_t message)
{
	struct iguanair *ir = FUNC4(intf);
	int rc = 0;

	FUNC2(&ir->lock);

	if (ir->receiver_on) {
		rc = FUNC1(ir, false);
		if (rc)
			FUNC0(ir->dev, "failed to disable receiver for suspend\n");
	}

	FUNC5(ir->urb_in);
	FUNC5(ir->urb_out);

	FUNC3(&ir->lock);

	return rc;
}