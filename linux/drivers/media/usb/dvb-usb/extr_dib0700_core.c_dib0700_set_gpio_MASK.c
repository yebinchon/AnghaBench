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
typedef  int u8 ;
struct dvb_usb_device {int /*<<< orphan*/  usb_mutex; struct dib0700_state* priv; } ;
struct dib0700_state {int* buf; } ;
typedef  enum dib07x0_gpios { ____Placeholder_dib07x0_gpios } dib07x0_gpios ;

/* Variables and functions */
 int EINTR ; 
 int REQUEST_SET_GPIO ; 
 int FUNC0 (struct dvb_usb_device*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct dvb_usb_device *d, enum dib07x0_gpios gpio, u8 gpio_dir, u8 gpio_val)
{
	struct dib0700_state *st = d->priv;
	int ret;

	if (FUNC2(&d->usb_mutex) < 0) {
		FUNC1("could not acquire lock");
		return -EINTR;
	}

	st->buf[0] = REQUEST_SET_GPIO;
	st->buf[1] = gpio;
	st->buf[2] = ((gpio_dir & 0x01) << 7) | ((gpio_val & 0x01) << 6);

	ret = FUNC0(d, st->buf, 3);

	FUNC3(&d->usb_mutex);
	return ret;
}