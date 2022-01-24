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
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct mt7615_dev {int false_cca_ofdm; int false_cca_cck; int ofdm_sensitivity; int cck_sensitivity; int /*<<< orphan*/  last_cca_adj; int /*<<< orphan*/  mt76; } ;
typedef  int s8 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  MT_WF_PHY_B0_MIN_PRI_PWR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  MT_WF_PHY_B0_PD_CCK_MASK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  MT_WF_PHY_B0_PD_OFDM_MASK ; 
 int /*<<< orphan*/  MT_WF_PHY_B0_RXTD_CCK_PD ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  MT_WF_PHY_B1_PD_CCK_MASK ; 
 int /*<<< orphan*/  MT_WF_PHY_B1_RXTD_CCK_PD ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mt7615_dev*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mt7615_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct mt7615_dev *dev,
			      u32 rts_err_rate, bool ofdm)
{
	int false_cca = ofdm ? dev->false_cca_ofdm : dev->false_cca_cck;
	u16 def_th = ofdm ? -98 : -110;
	bool update = false;
	s8 *sensitivity;
	int signal;

	sensitivity = ofdm ? &dev->ofdm_sensitivity : &dev->cck_sensitivity;
	signal = FUNC6(&dev->mt76);
	if (!signal) {
		FUNC5(dev);
		return;
	}

	signal = FUNC4(signal, -72);
	if (false_cca > 500) {
		if (rts_err_rate > FUNC0(40, 100))
			return;

		/* decrease coverage */
		if (*sensitivity == def_th && signal > -90) {
			*sensitivity = -90;
			update = true;
		} else if (*sensitivity + 2 < signal) {
			*sensitivity += 2;
			update = true;
		}
	} else if ((false_cca > 0 && false_cca < 50) ||
		   rts_err_rate > FUNC0(60, 100)) {
		/* increase coverage */
		if (*sensitivity - 2 >= def_th) {
			*sensitivity -= 2;
			update = true;
		}
	}

	if (*sensitivity > signal) {
		*sensitivity = signal;
		update = true;
	}

	if (update) {
		u16 val;

		if (ofdm) {
			/* DBDC not supported */
			val = *sensitivity * 2 + 512;
			FUNC7(dev, MT_WF_PHY_B0_MIN_PRI_PWR,
				 MT_WF_PHY_B0_PD_OFDM_MASK,
				 FUNC2(val));
		} else {
			val = *sensitivity + 256;
			FUNC7(dev, MT_WF_PHY_B0_RXTD_CCK_PD,
				 MT_WF_PHY_B0_PD_CCK_MASK,
				 FUNC1(val));
			FUNC7(dev, MT_WF_PHY_B1_RXTD_CCK_PD,
				 MT_WF_PHY_B1_PD_CCK_MASK,
				 FUNC3(val));
		}
		dev->last_cca_adj = jiffies;
	}
}