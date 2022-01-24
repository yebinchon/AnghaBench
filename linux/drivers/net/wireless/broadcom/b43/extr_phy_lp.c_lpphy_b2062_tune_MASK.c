#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_9__ {int crystalfreq; } ;
struct TYPE_10__ {TYPE_4__ pmu; } ;
struct ssb_bus {TYPE_5__ chipco; } ;
struct TYPE_6__ {struct b43_phy_lp* lp; } ;
struct b43_wldev {TYPE_3__* dev; TYPE_1__ phy; } ;
struct b43_phy_lp {int pdiv; } ;
struct b206x_channel {unsigned int channel; int* data; } ;
struct TYPE_8__ {TYPE_2__* sdev; } ;
struct TYPE_7__ {struct ssb_bus* bus; } ;

/* Variables and functions */
 int FUNC0 (struct b206x_channel*) ; 
 int /*<<< orphan*/  B2062_N_LGENA_CTL5 ; 
 int /*<<< orphan*/  B2062_N_LGENA_CTL6 ; 
 int /*<<< orphan*/  B2062_N_LGENA_TUNE0 ; 
 int /*<<< orphan*/  B2062_N_LGENA_TUNE2 ; 
 int /*<<< orphan*/  B2062_N_LGENA_TUNE3 ; 
 int /*<<< orphan*/  B2062_N_TX_PAD ; 
 int /*<<< orphan*/  B2062_N_TX_PGA ; 
 int /*<<< orphan*/  B2062_N_TX_TUNE ; 
 int /*<<< orphan*/  B2062_S_LGENG_CTL1 ; 
 int /*<<< orphan*/  B2062_S_RFPLL_CTL14 ; 
 int /*<<< orphan*/  B2062_S_RFPLL_CTL19 ; 
 int /*<<< orphan*/  B2062_S_RFPLL_CTL23 ; 
 int /*<<< orphan*/  B2062_S_RFPLL_CTL24 ; 
 int /*<<< orphan*/  B2062_S_RFPLL_CTL26 ; 
 int /*<<< orphan*/  B2062_S_RFPLL_CTL27 ; 
 int /*<<< orphan*/  B2062_S_RFPLL_CTL28 ; 
 int /*<<< orphan*/  B2062_S_RFPLL_CTL29 ; 
 int /*<<< orphan*/  B2062_S_RFPLL_CTL3 ; 
 int /*<<< orphan*/  B2062_S_RFPLL_CTL33 ; 
 int /*<<< orphan*/  B2062_S_RFPLL_CTL34 ; 
 scalar_t__ FUNC1 (int) ; 
 int EINVAL ; 
 int EIO ; 
 struct b206x_channel* b2062_chantbl ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*) ; 

__attribute__((used)) static int FUNC9(struct b43_wldev *dev,
			    unsigned int channel)
{
	struct b43_phy_lp *lpphy = dev->phy.lp;
	struct ssb_bus *bus = dev->dev->sdev->bus;
	const struct b206x_channel *chandata = NULL;
	u32 crystal_freq = bus->chipco.pmu.crystalfreq * 1000;
	u32 tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9;
	int i, err = 0;

	for (i = 0; i < FUNC0(b2062_chantbl); i++) {
		if (b2062_chantbl[i].channel == channel) {
			chandata = &b2062_chantbl[i];
			break;
		}
	}

	if (FUNC1(!chandata))
		return -EINVAL;

	FUNC4(dev, B2062_S_RFPLL_CTL14, 0x04);
	FUNC5(dev, B2062_N_LGENA_TUNE0, chandata->data[0]);
	FUNC5(dev, B2062_N_LGENA_TUNE2, chandata->data[1]);
	FUNC5(dev, B2062_N_LGENA_TUNE3, chandata->data[2]);
	FUNC5(dev, B2062_N_TX_TUNE, chandata->data[3]);
	FUNC5(dev, B2062_S_LGENG_CTL1, chandata->data[4]);
	FUNC5(dev, B2062_N_LGENA_CTL5, chandata->data[5]);
	FUNC5(dev, B2062_N_LGENA_CTL6, chandata->data[6]);
	FUNC5(dev, B2062_N_TX_PGA, chandata->data[7]);
	FUNC5(dev, B2062_N_TX_PAD, chandata->data[8]);

	tmp1 = crystal_freq / 1000;
	tmp2 = lpphy->pdiv * 1000;
	FUNC5(dev, B2062_S_RFPLL_CTL33, 0xCC);
	FUNC5(dev, B2062_S_RFPLL_CTL34, 0x07);
	FUNC7(dev);
	tmp3 = tmp2 * FUNC6(channel);
	if (FUNC6(channel) < 4000)
		tmp3 *= 2;
	tmp4 = 48 * tmp1;
	tmp6 = tmp3 / tmp4;
	tmp7 = tmp3 % tmp4;
	FUNC5(dev, B2062_S_RFPLL_CTL26, tmp6);
	tmp5 = tmp7 * 0x100;
	tmp6 = tmp5 / tmp4;
	tmp7 = tmp5 % tmp4;
	FUNC5(dev, B2062_S_RFPLL_CTL27, tmp6);
	tmp5 = tmp7 * 0x100;
	tmp6 = tmp5 / tmp4;
	tmp7 = tmp5 % tmp4;
	FUNC5(dev, B2062_S_RFPLL_CTL28, tmp6);
	tmp5 = tmp7 * 0x100;
	tmp6 = tmp5 / tmp4;
	tmp7 = tmp5 % tmp4;
	FUNC5(dev, B2062_S_RFPLL_CTL29, tmp6 + ((2 * tmp7) / tmp4));
	tmp8 = FUNC3(dev, B2062_S_RFPLL_CTL19);
	tmp9 = ((2 * tmp3 * (tmp8 + 1)) + (3 * tmp1)) / (6 * tmp1);
	FUNC5(dev, B2062_S_RFPLL_CTL23, (tmp9 >> 8) + 16);
	FUNC5(dev, B2062_S_RFPLL_CTL24, tmp9 & 0xFF);

	FUNC8(dev);
	if (FUNC3(dev, B2062_S_RFPLL_CTL3) & 0x10) {
		FUNC5(dev, B2062_S_RFPLL_CTL33, 0xFC);
		FUNC5(dev, B2062_S_RFPLL_CTL34, 0);
		FUNC7(dev);
		FUNC8(dev);
		if (FUNC3(dev, B2062_S_RFPLL_CTL3) & 0x10)
			err = -EIO;
	}

	FUNC2(dev, B2062_S_RFPLL_CTL14, ~0x04);
	return err;
}