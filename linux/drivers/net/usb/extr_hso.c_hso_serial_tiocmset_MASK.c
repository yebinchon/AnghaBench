#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {TYPE_2__* cur_altsetting; } ;
struct tty_struct {struct hso_serial* driver_data; } ;
struct hso_serial {int rts_state; int dtr_state; TYPE_3__* parent; int /*<<< orphan*/  serial_lock; } ;
struct TYPE_6__ {int port_spec; int /*<<< orphan*/  usb; struct usb_interface* interface; } ;
struct TYPE_4__ {int bInterfaceNumber; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int EINVAL ; 
 int HSO_PORT_MASK ; 
 int HSO_PORT_MODEM ; 
 unsigned int TIOCM_DTR ; 
 unsigned int TIOCM_RTS ; 
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct tty_struct *tty,
			       unsigned int set, unsigned int clear)
{
	int val = 0;
	unsigned long flags;
	int if_num;
	struct hso_serial *serial = tty->driver_data;
	struct usb_interface *interface;

	/* sanity check */
	if (!serial) {
		FUNC0(0x1, "no tty structures\n");
		return -EINVAL;
	}

	if ((serial->parent->port_spec & HSO_PORT_MASK) != HSO_PORT_MODEM)
		return -EINVAL;

	interface = serial->parent->interface;
	if_num = interface->cur_altsetting->desc.bInterfaceNumber;

	FUNC1(&serial->serial_lock, flags);
	if (set & TIOCM_RTS)
		serial->rts_state = 1;
	if (set & TIOCM_DTR)
		serial->dtr_state = 1;

	if (clear & TIOCM_RTS)
		serial->rts_state = 0;
	if (clear & TIOCM_DTR)
		serial->dtr_state = 0;

	if (serial->dtr_state)
		val |= 0x01;
	if (serial->rts_state)
		val |= 0x02;

	FUNC2(&serial->serial_lock, flags);

	return FUNC3(serial->parent->usb,
			       FUNC4(serial->parent->usb, 0), 0x22,
			       0x21, val, if_num, NULL, 0,
			       USB_CTRL_SET_TIMEOUT);
}