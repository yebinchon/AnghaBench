#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ data; } ;
struct TYPE_7__ {int has_2ghz; } ;
struct TYPE_6__ {scalar_t__ data; } ;
struct TYPE_9__ {TYPE_3__ eeprom; scalar_t__ macaddr; TYPE_2__ cap; TYPE_1__ otp; } ;
struct mt7603_dev {TYPE_4__ mt76; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  MT7603_EEPROM_SIZE ; 
 scalar_t__ MT_EE_MAC_ADDR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mt7603_dev*,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int FUNC3 (struct mt7603_dev*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 

int FUNC5(struct mt7603_dev *dev)
{
	int ret;

	ret = FUNC3(dev);
	if (ret < 0)
		return ret;

	if (dev->mt76.otp.data) {
		if (FUNC2(&dev->mt76) == 0)
			FUNC1(dev, dev->mt76.otp.data);
		else
			FUNC0(dev->mt76.eeprom.data, dev->mt76.otp.data,
			       MT7603_EEPROM_SIZE);
	}

	dev->mt76.cap.has_2ghz = true;
	FUNC0(dev->mt76.macaddr, dev->mt76.eeprom.data + MT_EE_MAC_ADDR,
	       ETH_ALEN);

	FUNC4(&dev->mt76);

	return 0;
}