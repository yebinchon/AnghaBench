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
typedef  int u16 ;
struct lpphy_iq_est {int iq_prod; int i_pwr; int q_pwr; } ;
struct b43_wldev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_LPPHY_RX_COMP_COEFF_S ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int FUNC6 (struct b43_wldev*,int,int,struct lpphy_iq_est*) ; 

__attribute__((used)) static int FUNC7(struct b43_wldev *dev, u16 samples)
{
	struct lpphy_iq_est iq_est;
	u16 c0, c1;
	int prod, ipwr, qpwr, prod_msb, q_msb, tmp1, tmp2, tmp3, tmp4, ret;

	c1 = FUNC3(dev, B43_LPPHY_RX_COMP_COEFF_S);
	c0 = c1 >> 8;
	c1 |= 0xFF;

	FUNC2(dev, B43_LPPHY_RX_COMP_COEFF_S, 0xFF00, 0x00C0);
	FUNC1(dev, B43_LPPHY_RX_COMP_COEFF_S, 0x00FF);

	ret = FUNC6(dev, samples, 32, &iq_est);
	if (!ret)
		goto out;

	prod = iq_est.iq_prod;
	ipwr = iq_est.i_pwr;
	qpwr = iq_est.q_pwr;

	if (ipwr + qpwr < 2) {
		ret = 0;
		goto out;
	}

	prod_msb = FUNC4(FUNC0(prod));
	q_msb = FUNC4(FUNC0(qpwr));
	tmp1 = prod_msb - 20;

	if (tmp1 >= 0) {
		tmp3 = ((prod << (30 - prod_msb)) + (ipwr >> (1 + tmp1))) /
			(ipwr >> tmp1);
	} else {
		tmp3 = ((prod << (30 - prod_msb)) + (ipwr << (-1 - tmp1))) /
			(ipwr << -tmp1);
	}

	tmp2 = q_msb - 11;

	if (tmp2 >= 0)
		tmp4 = (qpwr << (31 - q_msb)) / (ipwr >> tmp2);
	else
		tmp4 = (qpwr << (31 - q_msb)) / (ipwr << -tmp2);

	tmp4 -= tmp3 * tmp3;
	tmp4 = -FUNC5(tmp4);

	c0 = tmp3 >> 3;
	c1 = tmp4 >> 4;

out:
	FUNC2(dev, B43_LPPHY_RX_COMP_COEFF_S, 0xFF00, c1);
	FUNC2(dev, B43_LPPHY_RX_COMP_COEFF_S, 0x00FF, c0 << 8);
	return ret;
}