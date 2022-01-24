#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {TYPE_1__* chan; } ;
struct ieee80211_conf {int flags; scalar_t__ power_level; TYPE_2__ chandef; int /*<<< orphan*/  long_frame_max_tx_count; int /*<<< orphan*/  short_frame_max_tx_count; } ;
struct ieee80211_hw {struct ieee80211_conf conf; } ;
struct b43legacy_phy {scalar_t__ channel; scalar_t__ power_level; scalar_t__ radio_on; int /*<<< orphan*/  type; } ;
struct b43legacy_wldev {int /*<<< orphan*/  irq_mask; TYPE_3__* wl; int /*<<< orphan*/  radio_hw_enable; struct b43legacy_phy phy; } ;
struct b43legacy_wl {scalar_t__ radio_enabled; int /*<<< orphan*/  mutex; int /*<<< orphan*/  irq_lock; struct b43legacy_wldev* current_dev; } ;
struct TYPE_6__ {int radiotap_enabled; } ;
struct TYPE_4__ {int band; scalar_t__ hw_value; } ;

/* Variables and functions */
 int B43legacy_ANTENNA_DEFAULT ; 
 int /*<<< orphan*/  B43legacy_MMIO_GEN_IRQ_MASK ; 
 unsigned int B43legacy_PHYMODE_B ; 
 unsigned int B43legacy_PHYMODE_G ; 
 int /*<<< orphan*/  B43legacy_PHYTYPE_B ; 
 scalar_t__ B43legacy_STAT_STARTED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IEEE80211_CONF_CHANGE_RETRY_LIMITS ; 
 int IEEE80211_CONF_MONITOR ; 
#define  NL80211_BAND_2GHZ 128 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wldev*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC6 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct b43legacy_wldev*) ; 
 int FUNC8 (struct b43legacy_wl*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC10 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,char*) ; 
 struct b43legacy_wl* FUNC12 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC17(struct ieee80211_hw *hw,
				   u32 changed)
{
	struct b43legacy_wl *wl = FUNC12(hw);
	struct b43legacy_wldev *dev;
	struct b43legacy_phy *phy;
	struct ieee80211_conf *conf = &hw->conf;
	unsigned long flags;
	unsigned int new_phymode = 0xFFFF;
	int antenna_tx;
	int err = 0;

	antenna_tx = B43legacy_ANTENNA_DEFAULT;

	FUNC13(&wl->mutex);
	dev = wl->current_dev;
	phy = &dev->phy;

	if (changed & IEEE80211_CONF_CHANGE_RETRY_LIMITS)
		FUNC6(dev,
					   conf->short_frame_max_tx_count,
					   conf->long_frame_max_tx_count);
	changed &= ~IEEE80211_CONF_CHANGE_RETRY_LIMITS;
	if (!changed)
		goto out_unlock_mutex;

	/* Switch the PHY mode (if necessary). */
	switch (conf->chandef.chan->band) {
	case NL80211_BAND_2GHZ:
		if (phy->type == B43legacy_PHYTYPE_B)
			new_phymode = B43legacy_PHYMODE_B;
		else
			new_phymode = B43legacy_PHYMODE_G;
		break;
	default:
		FUNC0(1);
	}
	err = FUNC8(wl, new_phymode);
	if (err)
		goto out_unlock_mutex;

	/* Disable IRQs while reconfiguring the device.
	 * This makes it possible to drop the spinlock throughout
	 * the reconfiguration process. */
	FUNC15(&wl->irq_lock, flags);
	if (FUNC7(dev) < B43legacy_STAT_STARTED) {
		FUNC16(&wl->irq_lock, flags);
		goto out_unlock_mutex;
	}
	FUNC10(dev, B43legacy_MMIO_GEN_IRQ_MASK, 0);
	FUNC16(&wl->irq_lock, flags);
	FUNC9(dev);

	/* Switch to the requested channel.
	 * The firmware takes care of races with the TX handler. */
	if (conf->chandef.chan->hw_value != phy->channel)
		FUNC3(dev, conf->chandef.chan->hw_value,
					      0);

	dev->wl->radiotap_enabled = !!(conf->flags & IEEE80211_CONF_MONITOR);

	/* Adjust the desired TX power level. */
	if (conf->power_level != 0) {
		if (conf->power_level != phy->power_level) {
			phy->power_level = conf->power_level;
			FUNC2(dev);
		}
	}

	/* Antennas for RX and management frame TX. */
	FUNC1(dev, antenna_tx);

	if (wl->radio_enabled != phy->radio_on) {
		if (wl->radio_enabled) {
			FUNC5(dev);
			FUNC11(dev->wl, "Radio turned on by software\n");
			if (!dev->radio_hw_enable)
				FUNC11(dev->wl, "The hardware RF-kill"
					      " button still turns the radio"
					      " physically off. Press the"
					      " button to turn it on.\n");
		} else {
			FUNC4(dev, 0);
			FUNC11(dev->wl, "Radio turned off by"
				      " software\n");
		}
	}

	FUNC15(&wl->irq_lock, flags);
	FUNC10(dev, B43legacy_MMIO_GEN_IRQ_MASK, dev->irq_mask);
	FUNC16(&wl->irq_lock, flags);
out_unlock_mutex:
	FUNC14(&wl->mutex);

	return err;
}