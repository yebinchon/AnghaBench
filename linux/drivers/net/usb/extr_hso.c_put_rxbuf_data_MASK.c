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
struct urb {int actual_length; int /*<<< orphan*/  transfer_buffer; } ;
struct tty_struct {int dummy; } ;
struct hso_serial {scalar_t__* rx_urb_filled; TYPE_2__* parent; int /*<<< orphan*/  port; } ;
struct TYPE_4__ {TYPE_1__* usb; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 size_t FUNC2 (struct hso_serial*,struct urb*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*) ; 
 struct tty_struct* FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct tty_struct*) ; 

__attribute__((used)) static int FUNC9(struct urb *urb, struct hso_serial *serial)
{
	struct tty_struct *tty;
	int count;

	/* Sanity check */
	if (urb == NULL || serial == NULL) {
		FUNC1(0x1, "serial = NULL\n");
		return -2;
	}

	tty = FUNC7(&serial->port);

	if (tty && FUNC8(tty)) {
		FUNC6(tty);
		return -1;
	}

	/* Push data to tty */
	FUNC1(0x1, "data to push to tty\n");
	count = FUNC3(&serial->port, urb->actual_length);
	if (count >= urb->actual_length) {
		FUNC5(&serial->port, urb->transfer_buffer,
				       urb->actual_length);
		FUNC4(&serial->port);
	} else {
		FUNC0(&serial->parent->usb->dev,
			 "dropping data, %d bytes lost\n", urb->actual_length);
	}

	FUNC6(tty);

	serial->rx_urb_filled[FUNC2(serial, urb)] = 0;

	return 0;
}