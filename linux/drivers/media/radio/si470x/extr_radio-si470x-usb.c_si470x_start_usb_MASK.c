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
struct si470x_device {int int_in_running; int status_rssi_auto_update; int /*<<< orphan*/  hdl; TYPE_2__* intf; int /*<<< orphan*/  int_in_urb; TYPE_1__* int_in_endpoint; int /*<<< orphan*/  int_in_buffer; int /*<<< orphan*/  usbdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  bInterval; int /*<<< orphan*/  wMaxPacketSize; int /*<<< orphan*/  bEndpointAddress; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  si470x_int_in_callback ; 
 int FUNC3 (struct si470x_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct si470x_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct si470x_device *radio)
{
	int retval;

	/* initialize interrupt urb */
	FUNC4(radio->int_in_urb, radio->usbdev,
			FUNC5(radio->usbdev,
				radio->int_in_endpoint->bEndpointAddress),
			radio->int_in_buffer,
			FUNC1(radio->int_in_endpoint->wMaxPacketSize),
			si470x_int_in_callback,
			radio,
			radio->int_in_endpoint->bInterval);

	radio->int_in_running = 1;
	FUNC2();

	retval = FUNC6(radio->int_in_urb, GFP_KERNEL);
	if (retval) {
		FUNC0(&radio->intf->dev,
				"submitting int urb failed (%d)\n", retval);
		radio->int_in_running = 0;
	}
	radio->status_rssi_auto_update = radio->int_in_running;

	/* start radio */
	retval = FUNC3(radio);
	if (retval < 0)
		return retval;

	FUNC7(&radio->hdl);

	return retval;
}