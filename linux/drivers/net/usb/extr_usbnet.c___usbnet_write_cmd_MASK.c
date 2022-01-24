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
struct usbnet {int /*<<< orphan*/  udev; int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct usbnet *dev, u8 cmd, u8 reqtype,
			      u16 value, u16 index, const void *data,
			      u16 size)
{
	void *buf = NULL;
	int err = -ENOMEM;

	FUNC3(dev->net, "usbnet_write_cmd cmd=0x%02x reqtype=%02x"
		   " value=0x%04x index=0x%04x size=%d\n",
		   cmd, reqtype, value, index, size);

	if (data) {
		buf = FUNC2(data, size, GFP_KERNEL);
		if (!buf)
			goto out;
	} else {
        if (size) {
            FUNC0(1);
            err = -EINVAL;
            goto out;
        }
    }

	err = FUNC4(dev->udev, FUNC5(dev->udev, 0),
			      cmd, reqtype, value, index, buf, size,
			      USB_CTRL_SET_TIMEOUT);
	FUNC1(buf);

out:
	return err;
}