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
struct usbnet {int /*<<< orphan*/  udev; int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned char REQUEST_READ ; 
 unsigned char USB_DIR_IN ; 
 unsigned char USB_RECIP_DEVICE ; 
 unsigned char USB_RECIP_OTHER ; 
 unsigned char USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,unsigned char*,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned short,unsigned short) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char,unsigned char,unsigned short,unsigned short,unsigned char*,unsigned short,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct usbnet *dev,
			unsigned char request, unsigned short value,
			unsigned short index, void *data, unsigned short size,
			int timeout)
{
	unsigned char *buf = NULL;
	unsigned char request_type;
	int err = 0;

	if (request == REQUEST_READ)
		request_type = (USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_OTHER);
	else
		request_type = (USB_DIR_IN | USB_TYPE_VENDOR |
				USB_RECIP_DEVICE);

	FUNC3(dev->net, "Control_read() index=0x%02x size=%d\n",
		   index, size);

	buf = FUNC1(size, GFP_KERNEL);
	if (!buf) {
		err = -ENOMEM;
		goto err_out;
	}

	err = FUNC4(dev->udev,
			      FUNC5(dev->udev, 0),
			      request, request_type, value, index, buf, size,
			      timeout);
	if (err == size)
		FUNC2(data, buf, size);
	else if (err >= 0)
		err = -EINVAL;
	FUNC0(buf);

	return err;

err_out:
	return err;
}