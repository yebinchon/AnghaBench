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
typedef  int /*<<< orphan*/  u8 ;
struct i2c_msg {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct friio_priv {TYPE_1__* i2c_client_demod; } ;
struct dvb_usb_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 struct friio_priv* FUNC0 (struct dvb_usb_device*) ; 
 int FUNC1 (struct dvb_usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct dvb_usb_device *d, struct i2c_msg *msg)
{
	struct friio_priv *priv;
	u8 addr;

	priv = FUNC0(d);
	addr = priv->i2c_client_demod->addr;
	return FUNC1(d, addr, msg->buf, msg->len);
}