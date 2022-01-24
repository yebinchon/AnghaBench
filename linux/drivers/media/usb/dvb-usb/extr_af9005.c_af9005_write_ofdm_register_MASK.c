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
typedef  int /*<<< orphan*/  u16 ;
struct dvb_usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF9005_CMD_WRITE ; 
 int /*<<< orphan*/  AF9005_OFDM_REG ; 
 int FUNC0 (struct dvb_usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

int FUNC2(struct dvb_usb_device *d, u16 reg, u8 value)
{
	int ret;
	u8 temp = value;
	FUNC1("write register %x value %x ", reg, value);
	ret = FUNC0(d, reg,
					AF9005_CMD_WRITE, AF9005_OFDM_REG,
					&temp, 1);
	if (ret)
		FUNC1("failed\n");
	else
		FUNC1("ok\n");
	return ret;
}