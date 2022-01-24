#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_6__ {scalar_t__ data; } ;
struct TYPE_7__ {TYPE_1__ eeprom; scalar_t__ macaddr; TYPE_2__ otp; } ;
struct mt7615_dev {TYPE_3__ mt76; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  MT7615_EEPROM_SIZE ; 
 scalar_t__ MT_EE_MAC_ADDR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mt7615_dev*) ; 
 int FUNC2 (TYPE_3__*) ; 
 int FUNC3 (struct mt7615_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mt7615_dev*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

int FUNC6(struct mt7615_dev *dev)
{
	int ret;

	ret = FUNC3(dev);
	if (ret < 0)
		return ret;

	ret = FUNC2(&dev->mt76);
	if (ret && dev->mt76.otp.data)
		FUNC0(dev->mt76.eeprom.data, dev->mt76.otp.data,
		       MT7615_EEPROM_SIZE);
	else
		FUNC1(dev);

	FUNC4(dev);
	FUNC0(dev->mt76.macaddr, dev->mt76.eeprom.data + MT_EE_MAC_ADDR,
	       ETH_ALEN);

	FUNC5(&dev->mt76);

	return 0;
}