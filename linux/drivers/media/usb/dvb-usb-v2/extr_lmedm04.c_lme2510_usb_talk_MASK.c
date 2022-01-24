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
struct lme2510_state {int /*<<< orphan*/ * usb_buffer; } ;
struct dvb_usb_device {int /*<<< orphan*/  usb_mutex; struct lme2510_state* priv; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int FUNC0 (struct dvb_usb_device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct dvb_usb_device *d,
			    u8 *wbuf, int wlen, u8 *rbuf, int rlen)
{
	struct lme2510_state *st = d->priv;
	int ret = 0;

	if (FUNC1(wlen, rlen) > sizeof(st->usb_buffer))
		return -EINVAL;

	ret = FUNC3(&d->usb_mutex);
	if (ret < 0)
		return -EAGAIN;

	FUNC2(st->usb_buffer, wbuf, wlen);

	ret = FUNC0(d, st->usb_buffer, wlen,
					  st->usb_buffer, rlen);

	if (rlen)
		FUNC2(rbuf, st->usb_buffer, rlen);

	FUNC4(&d->usb_mutex);

	return ret;
}