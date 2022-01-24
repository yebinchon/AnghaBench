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
typedef  int u8 ;
struct i2c_msg {int len; int addr; int /*<<< orphan*/  buf; } ;
struct friio_priv {TYPE_1__* i2c_client_demod; } ;
struct dvb_usb_device {int /*<<< orphan*/  udev; } ;
struct TYPE_2__ {int addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GL861_REQ_I2C_RAW ; 
 int /*<<< orphan*/  GL861_WRITE ; 
 struct friio_priv* FUNC0 (struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct dvb_usb_device *d, struct i2c_msg *msg)
{
	u8 *buf;
	int ret;
	struct friio_priv *priv;

	priv = FUNC0(d);

	if (msg->len < 1)
		return -EINVAL;

	buf = FUNC2(msg->len + 1, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;
	buf[0] = msg->addr << 1;
	FUNC3(buf + 1, msg->buf, msg->len);

	ret = FUNC4(d->udev, FUNC5(d->udev, 0),
				 GL861_REQ_I2C_RAW, GL861_WRITE,
				 priv->i2c_client_demod->addr << (8 + 1),
				 0xFE, buf, msg->len + 1, 2000);
	FUNC1(buf);
	return ret;
}