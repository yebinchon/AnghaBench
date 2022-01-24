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
struct ttusbir {int /*<<< orphan*/  bulk_urb; int /*<<< orphan*/  led; int /*<<< orphan*/ * urb; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int NUM_URBS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ttusbir* FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct usb_interface *intf, pm_message_t message)
{
	struct ttusbir *tt = FUNC1(intf);
	int i;

	for (i = 0; i < NUM_URBS; i++)
		FUNC2(tt->urb[i]);

	FUNC0(&tt->led);
	FUNC2(tt->bulk_urb);

	return 0;
}