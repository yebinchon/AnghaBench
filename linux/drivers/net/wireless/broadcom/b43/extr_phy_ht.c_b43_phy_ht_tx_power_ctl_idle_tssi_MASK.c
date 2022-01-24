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
typedef  int u16 ;
struct TYPE_2__ {struct b43_phy_ht* ht; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_ht {int* idle_tssi; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  HT_RSSI_TSSI_2G ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int const,int) ; 
 int FUNC5 (struct b43_wldev*,int const) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,int const,int) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int const,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct b43_wldev *dev)
{
	struct b43_phy_ht *phy_ht = dev->phy.ht;
	static const u16 base[] = { 0x840, 0x860, 0x880 };
	u16 save_regs[3][3];
	s32 rssi_buf[6];
	int core;

	for (core = 0; core < 3; core++) {
		save_regs[core][1] = FUNC5(dev, base[core] + 6);
		save_regs[core][2] = FUNC5(dev, base[core] + 7);
		save_regs[core][0] = FUNC5(dev, base[core] + 0);

		FUNC7(dev, base[core] + 6, 0);
		FUNC4(dev, base[core] + 7, ~0xF); /* 0xF? Or just 0x6? */
		FUNC6(dev, base[core] + 0, 0x0400);
		FUNC6(dev, base[core] + 0, 0x1000);
	}

	FUNC3(dev);
	FUNC8(20);
	FUNC0(dev, HT_RSSI_TSSI_2G, rssi_buf, 1);
	FUNC2(dev);
	FUNC1(dev);

	phy_ht->idle_tssi[0] = rssi_buf[0] & 0xff;
	phy_ht->idle_tssi[1] = rssi_buf[2] & 0xff;
	phy_ht->idle_tssi[2] = rssi_buf[4] & 0xff;

	for (core = 0; core < 3; core++) {
		FUNC7(dev, base[core] + 0, save_regs[core][0]);
		FUNC7(dev, base[core] + 6, save_regs[core][1]);
		FUNC7(dev, base[core] + 7, save_regs[core][2]);
	}
}