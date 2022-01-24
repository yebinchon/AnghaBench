#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_3__ {int size; void* data; } ;
struct TYPE_4__ {TYPE_1__ otp; int /*<<< orphan*/  dev; } ;
struct mt7603_dev {TYPE_2__ mt76; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MT7603_EEPROM_SIZE ; 
 int /*<<< orphan*/  MT_EFUSE_BASE ; 
 scalar_t__ MT_EFUSE_BASE_CTRL ; 
 int MT_EFUSE_BASE_CTRL_EMPTY ; 
 void* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mt7603_dev*,scalar_t__,int,void*) ; 
 scalar_t__ FUNC2 (struct mt7603_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mt7603_dev*,scalar_t__) ; 

__attribute__((used)) static int
FUNC4(struct mt7603_dev *dev)
{
	u32 base = FUNC2(dev, MT_EFUSE_BASE);
	int len = MT7603_EEPROM_SIZE;
	void *buf;
	int ret, i;

	if (FUNC3(dev, base + MT_EFUSE_BASE_CTRL) & MT_EFUSE_BASE_CTRL_EMPTY)
		return 0;

	dev->mt76.otp.data = FUNC0(dev->mt76.dev, len, GFP_KERNEL);
	dev->mt76.otp.size = len;
	if (!dev->mt76.otp.data)
		return -ENOMEM;

	buf = dev->mt76.otp.data;
	for (i = 0; i + 16 <= len; i += 16) {
		ret = FUNC1(dev, base, i, buf + i);
		if (ret)
			return ret;
	}

	return 0;
}