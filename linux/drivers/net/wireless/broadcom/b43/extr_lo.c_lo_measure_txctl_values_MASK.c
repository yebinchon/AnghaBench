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
struct b43_phy {int rev; int radio_ver; int radio_rev; struct b43_phy_g* g; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct b43_txpower_lo_control {int tx_bias; int tx_magn; int /*<<< orphan*/  txctl_measured_time; } ;
struct b43_phy_g {int max_lb_gain; struct b43_txpower_lo_control* lo_control; } ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int,int,int) ; 
 int FUNC5 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,int,int) ; 
 int FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_phy*) ; 
 scalar_t__ FUNC9 (struct b43_phy*) ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC10 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC11 (struct b43_wldev*,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct b43_wldev *dev)
{
	struct b43_phy *phy = &dev->phy;
	struct b43_phy_g *gphy = phy->g;
	struct b43_txpower_lo_control *lo = gphy->lo_control;
	u16 reg, mask;
	u16 trsw_rx, pga;
	u16 radio_pctl_reg;

	static const u8 tx_bias_values[] = {
		0x09, 0x08, 0x0A, 0x01, 0x00,
		0x02, 0x05, 0x04, 0x06,
	};
	static const u8 tx_magn_values[] = {
		0x70, 0x40,
	};

	if (!FUNC8(phy)) {
		radio_pctl_reg = 6;
		trsw_rx = 2;
		pga = 0;
	} else {
		int lb_gain;	/* Loopback gain (in dB) */

		trsw_rx = 0;
		lb_gain = gphy->max_lb_gain / 2;
		if (lb_gain > 10) {
			radio_pctl_reg = 0;
			pga = FUNC1(10 - lb_gain) / 6;
			pga = FUNC7(pga, 0, 15);
		} else {
			int cmp_val;
			int tmp;

			pga = 0;
			cmp_val = 0x24;
			if ((phy->rev >= 2) &&
			    (phy->radio_ver == 0x2050) && (phy->radio_rev == 8))
				cmp_val = 0x3C;
			tmp = lb_gain;
			if ((10 - lb_gain) < cmp_val)
				tmp = (10 - lb_gain);
			if (tmp < 0)
				tmp += 6;
			else
				tmp += 3;
			cmp_val /= 4;
			tmp /= 4;
			if (tmp >= cmp_val)
				radio_pctl_reg = cmp_val;
			else
				radio_pctl_reg = tmp;
		}
	}
	FUNC4(dev, 0x43, 0xFFF0, radio_pctl_reg);
	FUNC2(dev, 2);

	reg = FUNC11(dev, &mask, NULL);
	mask = ~mask;
	FUNC3(dev, reg, mask);

	if (FUNC9(phy)) {
		int i, j;
		int feedthrough;
		int min_feedth = 0xFFFF;
		u8 tx_magn, tx_bias;

		for (i = 0; i < FUNC0(tx_magn_values); i++) {
			tx_magn = tx_magn_values[i];
			FUNC4(dev, 0x52, 0xFF0F, tx_magn);
			for (j = 0; j < FUNC0(tx_bias_values); j++) {
				tx_bias = tx_bias_values[j];
				FUNC4(dev, 0x52, 0xFFF0, tx_bias);
				feedthrough =
				    FUNC10(dev, 0, pga,
							   trsw_rx);
				if (feedthrough < min_feedth) {
					lo->tx_bias = tx_bias;
					lo->tx_magn = tx_magn;
					min_feedth = feedthrough;
				}
				if (lo->tx_bias == 0)
					break;
			}
			FUNC6(dev, 0x52,
					  (FUNC5(dev, 0x52)
					   & 0xFF00) | lo->tx_bias | lo->
					  tx_magn);
		}
	} else {
		lo->tx_magn = 0;
		lo->tx_bias = 0;
		FUNC3(dev, 0x52, 0xFFF0);	/* TX bias == 0 */
	}
	lo->txctl_measured_time = jiffies;
}