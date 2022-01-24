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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct dvbsky_state {int /*<<< orphan*/ * ibuf; int /*<<< orphan*/ * obuf; } ;
struct dvb_usb_device {int /*<<< orphan*/  usb_mutex; } ;

/* Variables and functions */
 struct dvbsky_state* FUNC0 (struct dvb_usb_device*) ; 
 int FUNC1 (struct dvb_usb_device*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct dvb_usb_device *d,
		u8 *wbuf, u16 wlen, u8 *rbuf, u16 rlen)
{
	int ret;
	struct dvbsky_state *state = FUNC0(d);

	FUNC3(&d->usb_mutex);
	if (wlen != 0)
		FUNC2(state->obuf, wbuf, wlen);

	ret = FUNC1(d, state->obuf, wlen,
			state->ibuf, rlen);

	if (!ret && (rlen != 0))
		FUNC2(rbuf, state->ibuf, rlen);

	FUNC4(&d->usb_mutex);
	return ret;
}