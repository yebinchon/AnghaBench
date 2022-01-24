#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct urb {int dummy; } ;
struct hso_tiocmget {struct urb* urb; int /*<<< orphan*/  waitq; } ;
struct hso_serial {int num_rx_urbs; struct hso_tiocmget* tiocmget; TYPE_1__* shared_int; struct urb* tx_urb; scalar_t__ curr_rx_urb_idx; scalar_t__* rx_urb_filled; struct urb** rx_urb; } ;
struct hso_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ use_count; int /*<<< orphan*/  shared_int_lock; struct urb* shared_intr_urb; } ;

/* Variables and functions */
 int ENODEV ; 
 struct hso_serial* FUNC0 (struct hso_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct hso_device *hso_dev)
{
	int i;
	struct hso_serial *serial = FUNC0(hso_dev);
	struct hso_tiocmget  *tiocmget;

	if (!serial)
		return -ENODEV;

	for (i = 0; i < serial->num_rx_urbs; i++) {
		if (serial->rx_urb[i]) {
			FUNC3(serial->rx_urb[i]);
			serial->rx_urb_filled[i] = 0;
		}
	}
	serial->curr_rx_urb_idx = 0;

	if (serial->tx_urb)
		FUNC3(serial->tx_urb);

	if (serial->shared_int) {
		FUNC1(&serial->shared_int->shared_int_lock);
		if (serial->shared_int->use_count &&
		    (--serial->shared_int->use_count == 0)) {
			struct urb *urb;

			urb = serial->shared_int->shared_intr_urb;
			if (urb)
				FUNC3(urb);
		}
		FUNC2(&serial->shared_int->shared_int_lock);
	}
	tiocmget = serial->tiocmget;
	if (tiocmget) {
		FUNC4(&tiocmget->waitq);
		FUNC3(tiocmget->urb);
	}

	return 0;
}