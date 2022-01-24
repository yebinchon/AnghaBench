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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct state {struct i2c_client** i2c_client; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int AF9035_I2C_CLIENT_MAX ; 
 struct state* FUNC0 (struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct dvb_usb_device *d)
{
	int num;
	struct state *state = FUNC0(d);
	struct usb_interface *intf = d->intf;
	struct i2c_client *client;

	/* find last used client */
	num = AF9035_I2C_CLIENT_MAX;
	while (num--) {
		if (state->i2c_client[num] != NULL)
			break;
	}

	FUNC1(&intf->dev, "num=%d\n", num);

	if (num == -1) {
		FUNC2(&intf->dev, "I2C client out of index\n");
		goto err;
	}

	client = state->i2c_client[num];

	/* decrease I2C driver usage count */
	FUNC4(client->dev.driver->owner);

	/* unregister I2C device */
	FUNC3(client);

	state->i2c_client[num] = NULL;
	return;
err:
	FUNC1(&intf->dev, "failed\n");
}