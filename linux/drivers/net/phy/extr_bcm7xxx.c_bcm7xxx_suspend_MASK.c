#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct bcm7xxx_regs   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct phy_device {int dummy; } ;
struct bcm7xxx_regs {int reg; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__ const*) ; 
#define  MII_BCM7XXX_100TX_AUX_CTL 130 
#define  MII_BCM7XXX_100TX_DISC 129 
#define  MII_BCM7XXX_TEST 128 
 int FUNC1 (struct phy_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev)
{
	int ret;
	static const struct bcm7xxx_regs {
		int reg;
		u16 value;
	} bcm7xxx_suspend_cfg[] = {
		{ MII_BCM7XXX_TEST, 0x008b },
		{ MII_BCM7XXX_100TX_AUX_CTL, 0x01c0 },
		{ MII_BCM7XXX_100TX_DISC, 0x7000 },
		{ MII_BCM7XXX_TEST, 0x000f },
		{ MII_BCM7XXX_100TX_AUX_CTL, 0x20d0 },
		{ MII_BCM7XXX_TEST, 0x000b },
	};
	unsigned int i;

	for (i = 0; i < FUNC0(bcm7xxx_suspend_cfg); i++) {
		ret = FUNC1(phydev,
				bcm7xxx_suspend_cfg[i].reg,
				bcm7xxx_suspend_cfg[i].value);
		if (ret)
			return ret;
	}

	return 0;
}