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
typedef  int u32 ;
struct redrat3_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  udev; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  RR3_GET_IR_PARAM ; 
 int /*<<< orphan*/  RR3_IR_IO_SIG_TIMEOUT ; 
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC9(struct redrat3_dev *rr3)
{
	__be32 *tmp;
	u32 timeout = FUNC0(150); /* a sane default, if things go haywire */
	int len, ret, pipe;

	len = sizeof(*tmp);
	tmp = FUNC5(len, GFP_KERNEL);
	if (!tmp)
		return timeout;

	pipe = FUNC8(rr3->udev, 0);
	ret = FUNC7(rr3->udev, pipe, RR3_GET_IR_PARAM,
			      USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_IN,
			      RR3_IR_IO_SIG_TIMEOUT, 0, tmp, len, HZ * 5);
	if (ret != len)
		FUNC3(rr3->dev, "Failed to read timeout from hardware\n");
	else {
		timeout = FUNC6(FUNC1(tmp));

		FUNC2(rr3->dev, "Got timeout of %d ms\n", timeout / 1000);
	}

	FUNC4(tmp);

	return timeout;
}