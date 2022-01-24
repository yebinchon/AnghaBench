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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct amradio_device {int muted; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amradio_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct amradio_device* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC6(struct usb_interface *intf, pm_message_t message)
{
	struct amradio_device *radio = FUNC4(FUNC5(intf));

	FUNC2(&radio->lock);
	if (!radio->muted) {
		FUNC0(radio, true);
		radio->muted = false;
	}
	FUNC3(&radio->lock);

	FUNC1(&intf->dev, "going into suspend..\n");
	return 0;
}