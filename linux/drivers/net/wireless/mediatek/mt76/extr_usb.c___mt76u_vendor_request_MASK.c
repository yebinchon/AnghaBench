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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct usb_device {int dummy; } ;
struct mt76_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  MT76_REMOVED ; 
 int MT_VEND_REQ_MAX_RETRY ; 
 int /*<<< orphan*/  MT_VEND_REQ_TOUT_MS ; 
 int USB_DIR_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct usb_device*,unsigned int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (struct usb_device*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct mt76_dev *dev, u8 req,
				  u8 req_type, u16 val, u16 offset,
				  void *buf, size_t len)
{
	struct usb_device *udev = FUNC3(dev->dev);
	unsigned int pipe;
	int i, ret;

	pipe = (req_type & USB_DIR_IN) ? FUNC5(udev, 0)
				       : FUNC6(udev, 0);
	for (i = 0; i < MT_VEND_REQ_MAX_RETRY; i++) {
		if (FUNC2(MT76_REMOVED, &dev->state))
			return -EIO;

		ret = FUNC4(udev, pipe, req, req_type, val,
				      offset, buf, len, MT_VEND_REQ_TOUT_MS);
		if (ret == -ENODEV)
			FUNC1(MT76_REMOVED, &dev->state);
		if (ret >= 0 || ret == -ENODEV)
			return ret;
		FUNC7(5000, 10000);
	}

	FUNC0(dev->dev, "vendor request req:%02x off:%04x failed:%d\n",
		req, offset, ret);
	return ret;
}