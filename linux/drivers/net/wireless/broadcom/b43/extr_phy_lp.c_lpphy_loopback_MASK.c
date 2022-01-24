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
typedef  int u32 ;
struct lpphy_iq_est {int i_pwr; int q_pwr; } ;
struct b43_wldev {int dummy; } ;
typedef  int /*<<< orphan*/  iq_est ;

/* Variables and functions */
 int /*<<< orphan*/  B2062_N_TX_CTL_A ; 
 int /*<<< orphan*/  B43_LPPHY_AFE_CTL_OVR ; 
 int /*<<< orphan*/  B43_LPPHY_AFE_CTL_OVRVAL ; 
 int /*<<< orphan*/  B43_LPPHY_RF_OVERRIDE_0 ; 
 int /*<<< orphan*/  B43_LPPHY_RF_OVERRIDE_VAL_0 ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int,int,struct lpphy_iq_est*) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC8 (struct lpphy_iq_est*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct b43_wldev *dev)
{
	struct lpphy_iq_est iq_est;
	int i, index = -1;
	u32 tmp;

	FUNC8(&iq_est, 0, sizeof(iq_est));

	FUNC6(dev, true, true);
	FUNC1(dev, B43_LPPHY_AFE_CTL_OVR, 1);
	FUNC0(dev, B43_LPPHY_AFE_CTL_OVRVAL, 0xFFFE);
	FUNC1(dev, B43_LPPHY_RF_OVERRIDE_0, 0x800);
	FUNC1(dev, B43_LPPHY_RF_OVERRIDE_VAL_0, 0x800);
	FUNC1(dev, B43_LPPHY_RF_OVERRIDE_0, 0x8);
	FUNC1(dev, B43_LPPHY_RF_OVERRIDE_VAL_0, 0x8);
	FUNC2(dev, B2062_N_TX_CTL_A, 0x80);
	FUNC1(dev, B43_LPPHY_RF_OVERRIDE_0, 0x80);
	FUNC1(dev, B43_LPPHY_RF_OVERRIDE_VAL_0, 0x80);
	for (i = 0; i < 32; i++) {
		FUNC5(dev, i);
		FUNC3(dev, 1, 1, 5, 5, 0);
		if (!(FUNC4(dev, 1000, 32, &iq_est)))
			continue;
		tmp = (iq_est.i_pwr + iq_est.q_pwr) / 1000;
		if ((tmp > 4000) && (tmp < 10000)) {
			index = i;
			break;
		}
	}
	FUNC7(dev);
	return index;
}