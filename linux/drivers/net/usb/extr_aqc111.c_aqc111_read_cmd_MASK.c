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
struct usbnet {int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct usbnet*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct usbnet *dev, u8 cmd, u16 value,
			   u16 index, u16 size, void *data)
{
	int ret;

	ret = FUNC2(dev, cmd, USB_DIR_IN | USB_TYPE_VENDOR |
			      USB_RECIP_DEVICE, value, index, data, size);

	if (FUNC1(ret < 0))
		FUNC0(dev->net,
			    "Failed to read(0x%x) reg index 0x%04x: %d\n",
			    cmd, index, ret);

	return ret;
}