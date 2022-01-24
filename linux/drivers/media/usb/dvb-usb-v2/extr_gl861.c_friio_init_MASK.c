#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int member_0; int member_1; } ;
typedef  TYPE_1__ u8 ;
struct friio_priv {int /*<<< orphan*/  i2c_client_demod; } ;
struct dvb_usb_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__ const**) ; 
 int /*<<< orphan*/  FRIIO_LED_STOPPED ; 
 struct friio_priv* FUNC1 (struct dvb_usb_device*) ; 
 int FUNC2 (struct dvb_usb_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct dvb_usb_device *d)
{
	int i;
	int ret;
	struct friio_priv *priv;

	static const u8 demod_init[][2] = {
		{0x01, 0x40}, {0x04, 0x38}, {0x05, 0x40}, {0x07, 0x40},
		{0x0f, 0x4f}, {0x11, 0x21}, {0x12, 0x0b}, {0x13, 0x2f},
		{0x14, 0x31}, {0x16, 0x02}, {0x21, 0xc4}, {0x22, 0x20},
		{0x2c, 0x79}, {0x2d, 0x34}, {0x2f, 0x00}, {0x30, 0x28},
		{0x31, 0x31}, {0x32, 0xdf}, {0x38, 0x01}, {0x39, 0x78},
		{0x3b, 0x33}, {0x3c, 0x33}, {0x48, 0x90}, {0x51, 0x68},
		{0x5e, 0x38}, {0x71, 0x00}, {0x72, 0x08}, {0x77, 0x00},
		{0xc0, 0x21}, {0xc1, 0x10}, {0xe4, 0x1a}, {0xea, 0x1f},
		{0x77, 0x00}, {0x71, 0x00}, {0x71, 0x00}, {0x76, 0x0c},
	};

	/* power on LNA? */
	ret = FUNC2(d, FRIIO_LED_STOPPED, true);
	if (ret < 0)
		return ret;
	FUNC4(20);

	/* init/config demod */
	priv = FUNC1(d);
	for (i = 0; i < FUNC0(demod_init); i++) {
		int ret;

		ret = FUNC3(priv->i2c_client_demod, demod_init[i], 2);
		if (ret < 0)
			return ret;
	}
	FUNC4(100);
	return 0;
}