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
struct mt7603_dev {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int FUNC0 (int,int) ; 
 int MT_EFUSE_CTRL ; 
 int MT_EFUSE_CTRL_AIN ; 
 int MT_EFUSE_CTRL_AOUT ; 
 int MT_EFUSE_CTRL_KICK ; 
 int MT_EFUSE_CTRL_MODE ; 
 int MT_EFUSE_CTRL_VALID ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mt7603_dev*,int,int,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct mt7603_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mt7603_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int
FUNC9(struct mt7603_dev *dev, u32 base, u16 addr, u8 *data)
{
	u32 val;
	int i;

	val = FUNC5(dev, base + MT_EFUSE_CTRL);
	val &= ~(MT_EFUSE_CTRL_AIN |
		 MT_EFUSE_CTRL_MODE);
	val |= FUNC0(MT_EFUSE_CTRL_AIN, addr & ~0xf);
	val |= MT_EFUSE_CTRL_KICK;
	FUNC6(dev, base + MT_EFUSE_CTRL, val);

	if (!FUNC4(dev, base + MT_EFUSE_CTRL, MT_EFUSE_CTRL_KICK, 0, 1000))
		return -ETIMEDOUT;

	FUNC8(2);

	val = FUNC5(dev, base + MT_EFUSE_CTRL);
	if ((val & MT_EFUSE_CTRL_AOUT) == MT_EFUSE_CTRL_AOUT ||
	    FUNC2(!(val & MT_EFUSE_CTRL_VALID))) {
		FUNC3(data, 0xff, 16);
		return 0;
	}

	for (i = 0; i < 4; i++) {
		val = FUNC5(dev, base + FUNC1(i));
		FUNC7(val, data + 4 * i);
	}

	return 0;
}