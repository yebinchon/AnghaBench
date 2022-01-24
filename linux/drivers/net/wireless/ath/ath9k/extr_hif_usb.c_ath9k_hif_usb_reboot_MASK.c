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
struct usb_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USB_MSG_TIMEOUT ; 
 int /*<<< orphan*/  USB_REG_OUT_PIPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct usb_device*,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct usb_device *udev)
{
	u32 reboot_cmd = 0xffffffff;
	void *buf;
	int ret;

	buf = FUNC2(&reboot_cmd, 4, GFP_KERNEL);
	if (!buf)
		return;

	ret = FUNC3(udev, FUNC4(udev, USB_REG_OUT_PIPE),
			   buf, 4, NULL, USB_MSG_TIMEOUT);
	if (ret)
		FUNC0(&udev->dev, "ath9k_htc: USB reboot failed\n");

	FUNC1(buf);
}