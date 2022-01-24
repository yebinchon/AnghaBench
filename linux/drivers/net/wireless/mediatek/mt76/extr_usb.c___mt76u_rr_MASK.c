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
 int /*<<< orphan*/  MT_VEND_MULTI_READ ; 
 int /*<<< orphan*/  MT_VEND_READ_CFG ; 
 int /*<<< orphan*/  MT_VEND_READ_EEPROM ; 
#define  MT_VEND_TYPE_CFG 129 
#define  MT_VEND_TYPE_EEPROM 128 
 int MT_VEND_TYPE_MASK ; 
 int USB_DIR_IN ; 
 int USB_TYPE_VENDOR ; 
 int FUNC0 (struct mt76_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76_dev*,int,int) ; 

__attribute__((used)) static u32 FUNC3(struct mt76_dev *dev, u32 addr)
{
	struct mt76_usb *usb = &dev->usb;
	u32 data = ~0;
	u16 offset;
	int ret;
	u8 req;

	switch (addr & MT_VEND_TYPE_MASK) {
	case MT_VEND_TYPE_EEPROM:
		req = MT_VEND_READ_EEPROM;
		break;
	case MT_VEND_TYPE_CFG:
		req = MT_VEND_READ_CFG;
		break;
	default:
		req = MT_VEND_MULTI_READ;
		break;
	}
	offset = addr & ~MT_VEND_TYPE_MASK;

	ret = FUNC0(dev, req,
				     USB_DIR_IN | USB_TYPE_VENDOR,
				     0, offset, &usb->reg_val, sizeof(__le32));
	if (ret == sizeof(__le32))
		data = FUNC1(usb->reg_val);
	FUNC2(dev, addr, data);

	return data;
}