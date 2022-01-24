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
typedef  int u16 ;
struct rtsx_ucr {int /*<<< orphan*/  pusb_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EP0_OP_SHIFT ; 
 int EP0_READ_REG_CMD ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RTSX_USB_REQ_REG_OP ; 
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct rtsx_ucr *ucr, u16 addr, u8 *data)
{
	u16 value;
	u8 *buf;
	int ret;

	if (!data)
		return -EINVAL;

	buf = FUNC1(sizeof(u8), GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	addr |= EP0_READ_REG_CMD << EP0_OP_SHIFT;
	value = FUNC2(addr);

	ret = FUNC3(ucr->pusb_dev,
			FUNC4(ucr->pusb_dev, 0), RTSX_USB_REQ_REG_OP,
			USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
			value, 0, buf, 1, 100);
	*data = *buf;

	FUNC0(buf);
	return ret;
}