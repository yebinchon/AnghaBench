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
typedef  scalar_t__ u32 ;
struct mt76_usb {int /*<<< orphan*/  usb_ctrl_mtx; scalar_t__ data; } ;
struct mt76_dev {struct mt76_usb usb; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  MT_VEND_MULTI_WRITE ; 
 int USB_DIR_OUT ; 
 int USB_TYPE_VENDOR ; 
 int FUNC1 (struct mt76_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__ const,scalar_t__*) ; 

__attribute__((used)) static void FUNC5(struct mt76_dev *dev, u32 offset,
		       const void *data, int len)
{
	struct mt76_usb *usb = &dev->usb;
	const u32 *val = data;
	int i, ret;

	FUNC2(&usb->usb_ctrl_mtx);
	for (i = 0; i < FUNC0(len, 4); i++) {
		FUNC4(val[i], (u32 *)usb->data);
		ret = FUNC1(dev, MT_VEND_MULTI_WRITE,
					     USB_DIR_OUT | USB_TYPE_VENDOR,
					     0, offset + i * 4, usb->data,
					     sizeof(u32));
		if (ret < 0)
			break;
	}
	FUNC3(&usb->usb_ctrl_mtx);
}