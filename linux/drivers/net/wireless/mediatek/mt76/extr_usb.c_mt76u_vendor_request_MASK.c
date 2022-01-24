#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  usb_ctrl_mtx; } ;
struct mt76_dev {TYPE_1__ usb; } ;

/* Variables and functions */
 int FUNC0 (struct mt76_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct mt76_dev *dev, u8 req,
			 u8 req_type, u16 val, u16 offset,
			 void *buf, size_t len)
{
	int ret;

	FUNC1(&dev->usb.usb_ctrl_mtx);
	ret = FUNC0(dev, req, req_type,
				     val, offset, buf, len);
	FUNC3(dev, offset, val);
	FUNC2(&dev->usb.usb_ctrl_mtx);

	return ret;
}