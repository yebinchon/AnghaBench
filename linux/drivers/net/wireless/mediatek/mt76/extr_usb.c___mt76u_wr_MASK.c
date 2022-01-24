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
typedef  int u32 ;
typedef  int u16 ;
struct mt76_usb {int /*<<< orphan*/  reg_val; } ;
struct mt76_dev {struct mt76_usb usb; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  MT_VEND_MULTI_WRITE ; 
#define  MT_VEND_TYPE_CFG 128 
 int MT_VEND_TYPE_MASK ; 
 int /*<<< orphan*/  MT_VEND_WRITE_CFG ; 
 int USB_DIR_OUT ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (struct mt76_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76_dev*,int,int) ; 

__attribute__((used)) static void FUNC3(struct mt76_dev *dev, u32 addr, u32 val)
{
	struct mt76_usb *usb = &dev->usb;
	u16 offset;
	u8 req;

	switch (addr & MT_VEND_TYPE_MASK) {
	case MT_VEND_TYPE_CFG:
		req = MT_VEND_WRITE_CFG;
		break;
	default:
		req = MT_VEND_MULTI_WRITE;
		break;
	}
	offset = addr & ~MT_VEND_TYPE_MASK;

	usb->reg_val = FUNC1(val);
	FUNC0(dev, req,
			       USB_DIR_OUT | USB_TYPE_VENDOR, 0,
			       offset, &usb->reg_val, sizeof(__le32));
	FUNC2(dev, addr, val);
}