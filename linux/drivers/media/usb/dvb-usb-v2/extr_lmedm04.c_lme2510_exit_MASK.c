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
struct lme2510_state {scalar_t__ lme_urb; } ;
struct dvb_usb_device {struct dvb_usb_adapter* adapter; struct lme2510_state* priv; } ;
struct dvb_usb_adapter {int /*<<< orphan*/  stream; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct dvb_usb_device *d)
{
	struct lme2510_state *st = d->priv;
	struct dvb_usb_adapter *adap = &d->adapter[0];

	if (adap != NULL) {
		FUNC1(&adap->stream);
	}

	if (st->lme_urb) {
		FUNC3(st->lme_urb);
		FUNC2(st->lme_urb);
		FUNC0("Interrupt Service Stopped");
	}
}