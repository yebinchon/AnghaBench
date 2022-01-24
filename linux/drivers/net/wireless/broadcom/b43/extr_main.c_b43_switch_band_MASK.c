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
typedef  int /*<<< orphan*/  u32 ;
struct ieee80211_channel {int band; } ;
struct b43_phy {int gmode; scalar_t__ type; int rev; scalar_t__ supports_5ghz; scalar_t__ supports_2ghz; } ;
struct b43_wldev {TYPE_1__* dev; int /*<<< orphan*/  wl; struct b43_phy phy; } ;
struct TYPE_2__ {int bus_type; int /*<<< orphan*/  sdev; int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_BCMA_IOCTL_GMODE ; 
#define  B43_BUS_BCMA 131 
#define  B43_BUS_SSB 130 
 scalar_t__ B43_PHYTYPE_N ; 
 int /*<<< orphan*/  B43_TMSLOW_GMODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BCMA_IOCTL ; 
 int EINVAL ; 
 int ENODEV ; 
#define  NL80211_BAND_2GHZ 129 
#define  NL80211_BAND_5GHZ 128 
 int /*<<< orphan*/  SSB_TMSLOW ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct b43_wldev *dev,
			   struct ieee80211_channel *chan)
{
	struct b43_phy *phy = &dev->phy;
	bool gmode;
	u32 tmp;

	switch (chan->band) {
	case NL80211_BAND_5GHZ:
		gmode = false;
		break;
	case NL80211_BAND_2GHZ:
		gmode = true;
		break;
	default:
		FUNC0(1);
		return -EINVAL;
	}

	if (!((gmode && phy->supports_2ghz) ||
	      (!gmode && phy->supports_5ghz))) {
		FUNC7(dev->wl, "This device doesn't support %s-GHz band\n",
		       FUNC8(chan->band));
		return -ENODEV;
	}

	if (!!phy->gmode == !!gmode) {
		/* This device is already running. */
		return 0;
	}

	FUNC6(dev->wl, "Switching to %s GHz band\n",
	       FUNC8(chan->band));

	/* Some new devices don't need disabling radio for band switching */
	if (!(phy->type == B43_PHYTYPE_N && phy->rev >= 3))
		FUNC4(dev, true);

	phy->gmode = gmode;
	FUNC2(dev);
	switch (dev->dev->bus_type) {
#ifdef CONFIG_B43_BCMA
	case B43_BUS_BCMA:
		tmp = bcma_aread32(dev->dev->bdev, BCMA_IOCTL);
		if (gmode)
			tmp |= B43_BCMA_IOCTL_GMODE;
		else
			tmp &= ~B43_BCMA_IOCTL_GMODE;
		bcma_awrite32(dev->dev->bdev, BCMA_IOCTL, tmp);
		break;
#endif
#ifdef CONFIG_B43_SSB
	case B43_BUS_SSB:
		tmp = ssb_read32(dev->dev->sdev, SSB_TMSLOW);
		if (gmode)
			tmp |= B43_TMSLOW_GMODE;
		else
			tmp &= ~B43_TMSLOW_GMODE;
		ssb_write32(dev->dev->sdev, SSB_TMSLOW, tmp);
		break;
#endif
	}
	FUNC3(dev);

	FUNC5(dev);

	FUNC1(dev);

	return 0;
}