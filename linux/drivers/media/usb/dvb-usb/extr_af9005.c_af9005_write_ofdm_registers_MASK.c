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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  (*) (char*)) ; 

int FUNC3(struct dvb_usb_device *d, u16 reg,
				u8 * values, int len)
{
	int ret;
	FUNC1("write %d registers %x values ", len, reg);
	FUNC2(values, len, deb_reg);

	ret = FUNC0(d, reg,
					AF9005_CMD_WRITE, AF9005_OFDM_REG,
					values, len);
	if (ret)
		FUNC1("failed\n");
	else
		FUNC1("ok\n");
	return ret;
}