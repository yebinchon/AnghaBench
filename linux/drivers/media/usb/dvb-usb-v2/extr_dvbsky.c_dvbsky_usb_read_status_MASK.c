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
struct dvbsky_state {int (* fe_read_status ) (struct dvb_frontend*,int*) ;int last_lock; } ;
struct dvb_usb_device {int dummy; } ;
struct dvb_frontend {int dummy; } ;
typedef  enum fe_status { ____Placeholder_fe_status } fe_status ;

/* Variables and functions */
 int FE_HAS_LOCK ; 
 struct dvbsky_state* FUNC0 (struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_usb_device*,int) ; 
 struct dvb_usb_device* FUNC2 (struct dvb_frontend*) ; 
 int FUNC3 (struct dvb_frontend*,int*) ; 

__attribute__((used)) static int FUNC4(struct dvb_frontend *fe,
				  enum fe_status *status)
{
	struct dvb_usb_device *d = FUNC2(fe);
	struct dvbsky_state *state = FUNC0(d);
	int ret;

	ret = state->fe_read_status(fe, status);

	/* it need resync slave fifo when signal change from unlock to lock.*/
	if ((*status & FE_HAS_LOCK) && (!state->last_lock))
		FUNC1(d, 1);

	state->last_lock = (*status & FE_HAS_LOCK) ? 1 : 0;
	return ret;
}