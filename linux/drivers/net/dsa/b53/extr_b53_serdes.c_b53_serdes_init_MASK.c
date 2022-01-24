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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct b53_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ B53_INVALID_LANE ; 
 int /*<<< orphan*/  B53_SERDES_ID0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  MII_PHYSID1 ; 
 int /*<<< orphan*/  MII_PHYSID2 ; 
 int /*<<< orphan*/  SERDES_ID0 ; 
 int SERDES_ID0_MODEL_MASK ; 
 int SERDES_ID0_REV_LETTER_SHIFT ; 
 int SERDES_ID0_REV_NUM_MASK ; 
 int SERDES_ID0_REV_NUM_SHIFT ; 
 int /*<<< orphan*/  SERDES_MII_BLK ; 
 scalar_t__ FUNC1 (struct b53_device*,int) ; 
 int FUNC2 (struct b53_device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__,int,int,int,int) ; 

int FUNC5(struct b53_device *dev, int port)
{
	u8 lane = FUNC1(dev, port);
	u16 id0, msb, lsb;

	if (lane == B53_INVALID_LANE)
		return -EINVAL;

	id0 = FUNC2(dev, lane, B53_SERDES_ID0, SERDES_ID0);
	msb = FUNC2(dev, lane, FUNC0(MII_PHYSID1),
			      SERDES_MII_BLK);
	lsb = FUNC2(dev, lane, FUNC0(MII_PHYSID2),
			      SERDES_MII_BLK);
	if (id0 == 0 || id0 == 0xffff) {
		FUNC3(dev->dev, "SerDes not initialized, check settings\n");
		return -ENODEV;
	}

	FUNC4(dev->dev,
		 "SerDes lane %d, model: %d, rev %c%d (OUI: 0x%08x)\n",
		 lane, id0 & SERDES_ID0_MODEL_MASK,
		 (id0 >> SERDES_ID0_REV_LETTER_SHIFT) + 0x41,
		 (id0 >> SERDES_ID0_REV_NUM_SHIFT) & SERDES_ID0_REV_NUM_MASK,
		 (u32)msb << 16 | lsb);

	return 0;
}