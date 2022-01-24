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
typedef  int /*<<< orphan*/  u8 ;
struct tty_struct {struct hso_serial* driver_data; } ;
struct TYPE_3__ {scalar_t__ count; } ;
struct hso_serial {TYPE_2__* parent; int /*<<< orphan*/  unthrottle_tasklet; TYPE_1__ port; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  interface; int /*<<< orphan*/  usb_gone; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct tty_struct *tty, struct file *filp)
{
	struct hso_serial *serial = tty->driver_data;
	u8 usb_gone;

	FUNC0(0x1, "Closing serial port\n");

	/* Open failed, no close cleanup required */
	if (serial == NULL)
		return;

	FUNC2(&serial->parent->mutex);
	usb_gone = serial->parent->usb_gone;

	if (!usb_gone)
		FUNC6(serial->parent->interface);

	/* reset the rts and dtr */
	/* do the actual close */
	serial->port.count--;

	if (serial->port.count <= 0) {
		serial->port.count = 0;
		FUNC5(&serial->port, NULL);
		if (!usb_gone)
			FUNC1(serial->parent);
		FUNC4(&serial->unthrottle_tasklet);
	}

	if (!usb_gone)
		FUNC7(serial->parent->interface);

	FUNC3(&serial->parent->mutex);
}