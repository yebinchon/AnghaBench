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
 unsigned char REQUEST_WRITE ; 
 unsigned char USB_DIR_OUT ; 
 unsigned char USB_RECIP_DEVICE ; 
 unsigned char USB_RECIP_OTHER ; 
 unsigned char USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (void*,unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned short,unsigned short) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char,unsigned char,unsigned short,unsigned short,unsigned char*,unsigned short,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct usbnet *dev, unsigned char request,
			 unsigned short value, unsigned short index,
			 void *data, unsigned short size, int timeout)
{
	unsigned char *buf = NULL;
	unsigned char request_type;
	int err = 0;

	if (request == REQUEST_WRITE)
		request_type = (USB_DIR_OUT | USB_TYPE_VENDOR |
				USB_RECIP_OTHER);
	else
		request_type = (USB_DIR_OUT | USB_TYPE_VENDOR |
				USB_RECIP_DEVICE);

	FUNC2(dev->net, "Control_write() index=0x%02x size=%d\n",
		   index, size);

	if (data) {
		buf = FUNC1(data, size, GFP_KERNEL);
		if (!buf) {
			err = -ENOMEM;
			goto err_out;
		}
	}

	err = FUNC3(dev->udev,
			      FUNC4(dev->udev, 0),
			      request, request_type, value, index, buf, size,
			      timeout);
	if (err >= 0 && err < size)
		err = -EINVAL;
	FUNC0(buf);

	return 0;

err_out:
	return err;
}