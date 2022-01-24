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
typedef  int /*<<< orphan*/  u16 ;
struct lcnphy_iq_est {int i_pwr; int q_pwr; } ;
struct brcms_phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RADIO_2064_REG112 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*,int,int,struct lcnphy_iq_est*) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(struct brcms_phy *pi, u16 biq1_gain,
				      u16 tia_gain, u16 lna2_gain)
{
	u32 i_thresh_l, q_thresh_l;
	u32 i_thresh_h, q_thresh_h;
	struct lcnphy_iq_est iq_est_h, iq_est_l;

	FUNC3(pi, 0, 0, 0, biq1_gain, tia_gain,
					       lna2_gain, 0);

	FUNC1(pi, true);
	FUNC4(pi, 2000, (40 >> 1), 0);
	FUNC0(500);
	FUNC5(pi, RADIO_2064_REG112, 0);
	if (!FUNC2(pi, 1024, 32, &iq_est_l))
		return false;

	FUNC4(pi, 2000, 40, 0);
	FUNC0(500);
	FUNC5(pi, RADIO_2064_REG112, 0);
	if (!FUNC2(pi, 1024, 32, &iq_est_h))
		return false;

	i_thresh_l = (iq_est_l.i_pwr << 1);
	i_thresh_h = (iq_est_l.i_pwr << 2) + iq_est_l.i_pwr;

	q_thresh_l = (iq_est_l.q_pwr << 1);
	q_thresh_h = (iq_est_l.q_pwr << 2) + iq_est_l.q_pwr;
	if ((iq_est_h.i_pwr > i_thresh_l) &&
	    (iq_est_h.i_pwr < i_thresh_h) &&
	    (iq_est_h.q_pwr > q_thresh_l) &&
	    (iq_est_h.q_pwr < q_thresh_h))
		return true;

	return false;
}