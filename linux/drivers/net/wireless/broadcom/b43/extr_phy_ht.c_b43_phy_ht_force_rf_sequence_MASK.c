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
struct b43_wldev {int /*<<< orphan*/  wl; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_PHY_HT_RF_SEQ_MODE ; 
 int /*<<< orphan*/  B43_PHY_HT_RF_SEQ_STATUS ; 
 int /*<<< orphan*/  B43_PHY_HT_RF_SEQ_TRIG ; 
 int FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct b43_wldev *dev, u16 rf_seq)
{
	u8 i;

	u16 save_seq_mode = FUNC0(dev, B43_PHY_HT_RF_SEQ_MODE);
	FUNC1(dev, B43_PHY_HT_RF_SEQ_MODE, 0x3);

	FUNC1(dev, B43_PHY_HT_RF_SEQ_TRIG, rf_seq);
	for (i = 0; i < 200; i++) {
		if (!(FUNC0(dev, B43_PHY_HT_RF_SEQ_STATUS) & rf_seq)) {
			i = 0;
			break;
		}
		FUNC4(1);
	}
	if (i)
		FUNC3(dev->wl, "Forcing RF sequence timeout\n");

	FUNC2(dev, B43_PHY_HT_RF_SEQ_MODE, save_seq_mode);
}