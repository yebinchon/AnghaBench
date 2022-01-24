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
typedef  int u8 ;
typedef  int u16 ;
struct TYPE_2__ {int rev; struct b43_phy_n* n; } ;
struct b43_wldev {int /*<<< orphan*/  wl; TYPE_1__ phy; } ;
struct b43_phy_n {scalar_t__ elna_gain_config; scalar_t__ gain_boost; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_NPHY_C1_CCK_CGAINI ; 
 int B43_NPHY_C1_CCK_CGAINI_GAINBKOFF ; 
 int /*<<< orphan*/  B43_NPHY_C1_CGAINI ; 
 int /*<<< orphan*/  B43_NPHY_C1_CGAINI_CL2DETECT ; 
 int B43_NPHY_C1_CGAINI_GAINBKOFF ; 
 int /*<<< orphan*/  B43_NPHY_C1_CLIPWBTHRES ; 
 int B43_NPHY_C1_CLIPWBTHRES_CLIP2 ; 
 int /*<<< orphan*/  B43_NPHY_C1_INITGAIN ; 
 int B43_NPHY_C1_INITGAIN_HPVGA2 ; 
 int B43_NPHY_C1_INITGAIN_HPVGA2_SHIFT ; 
 int /*<<< orphan*/  B43_NPHY_C1_NBCLIPTHRES ; 
 int /*<<< orphan*/  B43_NPHY_C2_CCK_CGAINI ; 
 int B43_NPHY_C2_CCK_CGAINI_GAINBKOFF ; 
 int /*<<< orphan*/  B43_NPHY_C2_CGAINI ; 
 int /*<<< orphan*/  B43_NPHY_C2_CGAINI_CL2DETECT ; 
 int B43_NPHY_C2_CGAINI_GAINBKOFF ; 
 int /*<<< orphan*/  B43_NPHY_C2_CLIPWBTHRES ; 
 int B43_NPHY_C2_CLIPWBTHRES_CLIP2 ; 
 int /*<<< orphan*/  B43_NPHY_C2_INITGAIN ; 
 int B43_NPHY_C2_INITGAIN_HPVGA2 ; 
 int B43_NPHY_C2_INITGAIN_HPVGA2_SHIFT ; 
 int /*<<< orphan*/  B43_NPHY_C2_NBCLIPTHRES ; 
 int /*<<< orphan*/  B43_NPHY_CCK_SHIFTB_REF ; 
 int /*<<< orphan*/  B43_NPHY_CLIP1_NBDWELL_LEN ; 
 int /*<<< orphan*/  B43_NPHY_CLIP2_NBDWELL_LEN ; 
 int /*<<< orphan*/  B43_NPHY_OVER_DGAIN1 ; 
 int B43_NPHY_OVER_DGAIN_CCKDGECV ; 
 int B43_NPHY_OVER_DGAIN_CCKDGECV_SHIFT ; 
 int /*<<< orphan*/  B43_NPHY_TABLE_ADDR ; 
 int /*<<< orphan*/  B43_NPHY_TABLE_DATALO ; 
 int /*<<< orphan*/  B43_NPHY_W1CLIP1_DWELL_LEN ; 
 int /*<<< orphan*/  B43_NPHY_W1CLIP2_DWELL_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ NL80211_BAND_2GHZ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct b43_wldev *dev)
{
	struct b43_phy_n *nphy = dev->phy.n;

	u8 i, j;
	u8 code;
	u16 tmp;
	u8 rfseq_events[3] = { 6, 8, 7 };
	u8 rfseq_delays[3] = { 10, 30, 1 };

	/* Set Clip 2 detect */
	FUNC6(dev, B43_NPHY_C1_CGAINI, B43_NPHY_C1_CGAINI_CL2DETECT);
	FUNC6(dev, B43_NPHY_C2_CGAINI, B43_NPHY_C2_CGAINI_CL2DETECT);

	/* Set narrowband clip threshold */
	FUNC7(dev, B43_NPHY_C1_NBCLIPTHRES, 0x84);
	FUNC7(dev, B43_NPHY_C2_NBCLIPTHRES, 0x84);

	if (!FUNC2(dev)) {
		/* Set dwell lengths */
		FUNC7(dev, B43_NPHY_CLIP1_NBDWELL_LEN, 0x002B);
		FUNC7(dev, B43_NPHY_CLIP2_NBDWELL_LEN, 0x002B);
		FUNC7(dev, B43_NPHY_W1CLIP1_DWELL_LEN, 0x0009);
		FUNC7(dev, B43_NPHY_W1CLIP2_DWELL_LEN, 0x0009);
	}

	/* Set wideband clip 2 threshold */
	FUNC5(dev, B43_NPHY_C1_CLIPWBTHRES,
			~B43_NPHY_C1_CLIPWBTHRES_CLIP2, 21);
	FUNC5(dev, B43_NPHY_C2_CLIPWBTHRES,
			~B43_NPHY_C2_CLIPWBTHRES_CLIP2, 21);

	if (!FUNC2(dev)) {
		FUNC5(dev, B43_NPHY_C1_CGAINI,
			~B43_NPHY_C1_CGAINI_GAINBKOFF, 0x1);
		FUNC5(dev, B43_NPHY_C2_CGAINI,
			~B43_NPHY_C2_CGAINI_GAINBKOFF, 0x1);
		FUNC5(dev, B43_NPHY_C1_CCK_CGAINI,
			~B43_NPHY_C1_CCK_CGAINI_GAINBKOFF, 0x1);
		FUNC5(dev, B43_NPHY_C2_CCK_CGAINI,
			~B43_NPHY_C2_CCK_CGAINI_GAINBKOFF, 0x1);
	}

	FUNC7(dev, B43_NPHY_CCK_SHIFTB_REF, 0x809C);

	if (nphy->gain_boost) {
		if (FUNC1(dev->wl) == NL80211_BAND_2GHZ &&
		    FUNC2(dev))
			code = 4;
		else
			code = 5;
	} else {
		code = FUNC2(dev) ? 6 : 7;
	}

	/* Set HPVGA2 index */
	FUNC5(dev, B43_NPHY_C1_INITGAIN, ~B43_NPHY_C1_INITGAIN_HPVGA2,
			code << B43_NPHY_C1_INITGAIN_HPVGA2_SHIFT);
	FUNC5(dev, B43_NPHY_C2_INITGAIN, ~B43_NPHY_C2_INITGAIN_HPVGA2,
			code << B43_NPHY_C2_INITGAIN_HPVGA2_SHIFT);

	FUNC7(dev, B43_NPHY_TABLE_ADDR, 0x1D06);
	/* specs say about 2 loops, but wl does 4 */
	for (i = 0; i < 4; i++)
		FUNC7(dev, B43_NPHY_TABLE_DATALO, (code << 8 | 0x7C));

	FUNC3(dev);

	if (nphy->elna_gain_config) {
		FUNC7(dev, B43_NPHY_TABLE_ADDR, 0x0808);
		FUNC7(dev, B43_NPHY_TABLE_DATALO, 0x0);
		FUNC7(dev, B43_NPHY_TABLE_DATALO, 0x1);
		FUNC7(dev, B43_NPHY_TABLE_DATALO, 0x1);
		FUNC7(dev, B43_NPHY_TABLE_DATALO, 0x1);

		FUNC7(dev, B43_NPHY_TABLE_ADDR, 0x0C08);
		FUNC7(dev, B43_NPHY_TABLE_DATALO, 0x0);
		FUNC7(dev, B43_NPHY_TABLE_DATALO, 0x1);
		FUNC7(dev, B43_NPHY_TABLE_DATALO, 0x1);
		FUNC7(dev, B43_NPHY_TABLE_DATALO, 0x1);

		FUNC7(dev, B43_NPHY_TABLE_ADDR, 0x1D06);
		/* specs say about 2 loops, but wl does 4 */
		for (i = 0; i < 4; i++)
			FUNC7(dev, B43_NPHY_TABLE_DATALO,
						(code << 8 | 0x74));
	}

	if (dev->phy.rev == 2) {
		for (i = 0; i < 4; i++) {
			FUNC7(dev, B43_NPHY_TABLE_ADDR,
					(0x0400 * i) + 0x0020);
			for (j = 0; j < 21; j++) {
				tmp = j * (i < 2 ? 3 : 1);
				FUNC7(dev,
					B43_NPHY_TABLE_DATALO, tmp);
			}
		}
	}

	FUNC4(dev, 5, rfseq_events, rfseq_delays, 3);
	FUNC5(dev, B43_NPHY_OVER_DGAIN1,
		~B43_NPHY_OVER_DGAIN_CCKDGECV & 0xFFFF,
		0x5A << B43_NPHY_OVER_DGAIN_CCKDGECV_SHIFT);

	if (FUNC1(dev->wl) == NL80211_BAND_2GHZ)
		FUNC5(dev, FUNC0(0xC5D), 0xFF80, 4);
}