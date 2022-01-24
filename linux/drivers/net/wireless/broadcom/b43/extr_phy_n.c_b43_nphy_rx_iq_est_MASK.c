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
typedef  int u16 ;
struct nphy_iq_est {int i0_pwr; int q0_pwr; int iq0_prod; int i1_pwr; int q1_pwr; int iq1_prod; } ;
struct b43_wldev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_NPHY_IQEST_CMD ; 
 int B43_NPHY_IQEST_CMD_MODE ; 
 int B43_NPHY_IQEST_CMD_START ; 
 int /*<<< orphan*/  B43_NPHY_IQEST_IPACC_HI0 ; 
 int /*<<< orphan*/  B43_NPHY_IQEST_IPACC_HI1 ; 
 int /*<<< orphan*/  B43_NPHY_IQEST_IPACC_LO0 ; 
 int /*<<< orphan*/  B43_NPHY_IQEST_IPACC_LO1 ; 
 int /*<<< orphan*/  B43_NPHY_IQEST_IQACC_HI0 ; 
 int /*<<< orphan*/  B43_NPHY_IQEST_IQACC_HI1 ; 
 int /*<<< orphan*/  B43_NPHY_IQEST_IQACC_LO0 ; 
 int /*<<< orphan*/  B43_NPHY_IQEST_IQACC_LO1 ; 
 int /*<<< orphan*/  B43_NPHY_IQEST_QPACC_HI0 ; 
 int /*<<< orphan*/  B43_NPHY_IQEST_QPACC_HI1 ; 
 int /*<<< orphan*/  B43_NPHY_IQEST_QPACC_LO0 ; 
 int /*<<< orphan*/  B43_NPHY_IQEST_QPACC_LO1 ; 
 int /*<<< orphan*/  B43_NPHY_IQEST_SAMCNT ; 
 int /*<<< orphan*/  B43_NPHY_IQEST_WT ; 
 int /*<<< orphan*/  B43_NPHY_IQEST_WT_VAL ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nphy_iq_est*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct b43_wldev *dev, struct nphy_iq_est *est,
				u16 samps, u8 time, bool wait)
{
	int i;
	u16 tmp;

	FUNC4(dev, B43_NPHY_IQEST_SAMCNT, samps);
	FUNC1(dev, B43_NPHY_IQEST_WT, ~B43_NPHY_IQEST_WT_VAL, time);
	if (wait)
		FUNC3(dev, B43_NPHY_IQEST_CMD, B43_NPHY_IQEST_CMD_MODE);
	else
		FUNC0(dev, B43_NPHY_IQEST_CMD, ~B43_NPHY_IQEST_CMD_MODE);

	FUNC3(dev, B43_NPHY_IQEST_CMD, B43_NPHY_IQEST_CMD_START);

	for (i = 1000; i; i--) {
		tmp = FUNC2(dev, B43_NPHY_IQEST_CMD);
		if (!(tmp & B43_NPHY_IQEST_CMD_START)) {
			est->i0_pwr = (FUNC2(dev, B43_NPHY_IQEST_IPACC_HI0) << 16) |
					FUNC2(dev, B43_NPHY_IQEST_IPACC_LO0);
			est->q0_pwr = (FUNC2(dev, B43_NPHY_IQEST_QPACC_HI0) << 16) |
					FUNC2(dev, B43_NPHY_IQEST_QPACC_LO0);
			est->iq0_prod = (FUNC2(dev, B43_NPHY_IQEST_IQACC_HI0) << 16) |
					FUNC2(dev, B43_NPHY_IQEST_IQACC_LO0);

			est->i1_pwr = (FUNC2(dev, B43_NPHY_IQEST_IPACC_HI1) << 16) |
					FUNC2(dev, B43_NPHY_IQEST_IPACC_LO1);
			est->q1_pwr = (FUNC2(dev, B43_NPHY_IQEST_QPACC_HI1) << 16) |
					FUNC2(dev, B43_NPHY_IQEST_QPACC_LO1);
			est->iq1_prod = (FUNC2(dev, B43_NPHY_IQEST_IQACC_HI1) << 16) |
					FUNC2(dev, B43_NPHY_IQEST_IQACC_LO1);
			return;
		}
		FUNC6(10);
	}
	FUNC5(est, 0, sizeof(*est));
}