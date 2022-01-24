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
struct ttusbir {int is_led_on; int /*<<< orphan*/  dev; int /*<<< orphan*/ * urb; int /*<<< orphan*/  led; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NUM_URBS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ttusbir* FUNC2 (struct usb_interface*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb_interface *intf)
{
	struct ttusbir *tt = FUNC2(intf);
	int i, rc;

	tt->is_led_on = true;
	FUNC1(&tt->led);

	for (i = 0; i < NUM_URBS; i++) {
		rc = FUNC3(tt->urb[i], GFP_KERNEL);
		if (rc) {
			FUNC0(tt->dev, "failed to submit urb: %d\n", rc);
			break;
		}
	}

	return rc;
}