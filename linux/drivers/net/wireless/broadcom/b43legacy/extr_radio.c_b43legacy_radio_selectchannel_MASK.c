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
typedef  int u8 ;
struct b43legacy_phy {int type; int channel; } ;
struct b43legacy_wldev {TYPE_3__* dev; struct b43legacy_phy phy; } ;
struct TYPE_6__ {TYPE_2__* bus; } ;
struct TYPE_4__ {int country_code; } ;
struct TYPE_5__ {TYPE_1__ sprom; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43legacy_MMIO_CHANNEL ; 
 int /*<<< orphan*/  B43legacy_MMIO_CHANNEL_EXT ; 
#define  B43legacy_PHYTYPE_B 129 
#define  B43legacy_PHYTYPE_G 128 
 int B43legacy_RADIO_DEFAULT_CHANNEL_BG ; 
 int /*<<< orphan*/  B43legacy_SHM_SHARED ; 
 int /*<<< orphan*/  B43legacy_UCODEFLAGS_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

int FUNC8(struct b43legacy_wldev *dev,
				  u8 channel,
				  int synthetic_pu_workaround)
{
	struct b43legacy_phy *phy = &dev->phy;

	if (channel == 0xFF) {
		switch (phy->type) {
		case B43legacy_PHYTYPE_B:
		case B43legacy_PHYTYPE_G:
			channel = B43legacy_RADIO_DEFAULT_CHANNEL_BG;
			break;
		default:
			FUNC0(1);
		}
	}

/* TODO: Check if channel is valid - return -EINVAL if not */
	if (synthetic_pu_workaround)
		FUNC4(dev, channel);

	FUNC5(dev, B43legacy_MMIO_CHANNEL,
			  FUNC6(channel));

	if (channel == 14) {
		if (dev->dev->bus->sprom.country_code == 5)   /* JAPAN) */
			FUNC3(dev, B43legacy_SHM_SHARED,
					      B43legacy_UCODEFLAGS_OFFSET,
					      FUNC2(dev,
					      B43legacy_SHM_SHARED,
					      B43legacy_UCODEFLAGS_OFFSET)
					      & ~(1 << 7));
		else
			FUNC3(dev, B43legacy_SHM_SHARED,
					      B43legacy_UCODEFLAGS_OFFSET,
					      FUNC2(dev,
					      B43legacy_SHM_SHARED,
					      B43legacy_UCODEFLAGS_OFFSET)
					      | (1 << 7));
		FUNC5(dev, B43legacy_MMIO_CHANNEL_EXT,
				  FUNC1(dev,
				  B43legacy_MMIO_CHANNEL_EXT) | (1 << 11));
	} else
		FUNC5(dev, B43legacy_MMIO_CHANNEL_EXT,
				  FUNC1(dev,
				  B43legacy_MMIO_CHANNEL_EXT) & 0xF7BF);

	phy->channel = channel;
	/*XXX: Using the longer of 2 timeouts (8000 vs 2000 usecs). Specs states
	 *     that 2000 usecs might suffice. */
	FUNC7(8);

	return 0;
}