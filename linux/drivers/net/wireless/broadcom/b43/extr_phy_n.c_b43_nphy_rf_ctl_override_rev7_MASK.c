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
typedef  int u8 ;
typedef  int u16 ;
struct nphy_rf_control_override_rev7 {int val_addr_core0; int val_addr_core1; int val_mask; int val_shift; } ;
struct b43_phy {int rev; } ;
struct b43_wldev {int /*<<< orphan*/  wl; struct b43_phy phy; } ;

/* Variables and functions */
 int FUNC0 (int**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct nphy_rf_control_override_rev7* FUNC2 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC7(struct b43_wldev *dev, u16 field,
					  u16 value, u8 core, bool off,
					  u8 override)
{
	struct b43_phy *phy = &dev->phy;
	const struct nphy_rf_control_override_rev7 *e;
	u16 en_addrs[3][2] = {
		{ 0x0E7, 0x0EC }, { 0x342, 0x343 }, { 0x346, 0x347 }
	};
	u16 en_addr;
	u16 en_mask = field;
	u16 val_addr;
	u8 i;

	if (phy->rev >= 19 || phy->rev < 3) {
		FUNC1(1);
		return;
	}

	/* Remember: we can get NULL! */
	e = FUNC2(dev, field, override);

	for (i = 0; i < 2; i++) {
		if (override >= FUNC0(en_addrs)) {
			FUNC6(dev->wl, "Invalid override value %d\n", override);
			return;
		}
		en_addr = en_addrs[override][i];

		if (e)
			val_addr = (i == 0) ? e->val_addr_core0 : e->val_addr_core1;

		if (off) {
			FUNC3(dev, en_addr, ~en_mask);
			if (e) /* Do it safer, better than wl */
				FUNC3(dev, val_addr, ~e->val_mask);
		} else {
			if (!core || (core & (1 << i))) {
				FUNC5(dev, en_addr, en_mask);
				if (e)
					FUNC4(dev, val_addr, ~e->val_mask, (value << e->val_shift));
			}
		}
	}
}