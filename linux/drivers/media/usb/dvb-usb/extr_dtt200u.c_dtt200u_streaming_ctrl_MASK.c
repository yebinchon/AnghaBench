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
struct dvb_usb_device {int /*<<< orphan*/  data_mutex; struct dtt200u_state* priv; } ;
struct dvb_usb_adapter {struct dvb_usb_device* dev; } ;
struct dtt200u_state {int* data; } ;

/* Variables and functions */
 int RESET_PID_FILTER ; 
 int SET_STREAMING ; 
 int FUNC0 (struct dvb_usb_device*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct dvb_usb_adapter *adap, int onoff)
{
	struct dvb_usb_device *d = adap->dev;
	struct dtt200u_state *st = d->priv;
	int ret;

	FUNC1(&d->data_mutex);
	st->data[0] = SET_STREAMING;
	st->data[1] = onoff;

	ret = FUNC0(adap->dev, st->data, 2);
	if (ret < 0)
		goto ret;

	if (onoff)
		goto ret;

	st->data[0] = RESET_PID_FILTER;
	ret = FUNC0(adap->dev, st->data, 1);

ret:
	FUNC2(&d->data_mutex);

	return ret;
}