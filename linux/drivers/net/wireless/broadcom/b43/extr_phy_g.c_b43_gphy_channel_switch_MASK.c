#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct b43_wldev {TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* bus_sprom; } ;
struct TYPE_3__ {scalar_t__ country_code; } ;

/* Variables and functions */
 int B43_HF_ACPR ; 
 int /*<<< orphan*/  B43_MMIO_CHANNEL ; 
 int /*<<< orphan*/  B43_MMIO_CHANNEL_EXT ; 
 scalar_t__ SSB_SPROM1CCODE_JAPAN ; 
 int FUNC0 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int) ; 
 int FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (unsigned int) ; 

void FUNC6(struct b43_wldev *dev,
			     unsigned int channel,
			     bool synthetic_pu_workaround)
{
	if (synthetic_pu_workaround)
		FUNC3(dev, channel);

	FUNC4(dev, B43_MMIO_CHANNEL, FUNC5(channel));

	if (channel == 14) {
		if (dev->dev->bus_sprom->country_code ==
		    SSB_SPROM1CCODE_JAPAN)
			FUNC1(dev,
				     FUNC0(dev) & ~B43_HF_ACPR);
		else
			FUNC1(dev,
				     FUNC0(dev) | B43_HF_ACPR);
		FUNC4(dev, B43_MMIO_CHANNEL_EXT,
			    FUNC2(dev, B43_MMIO_CHANNEL_EXT)
			    | (1 << 11));
	} else {
		FUNC4(dev, B43_MMIO_CHANNEL_EXT,
			    FUNC2(dev, B43_MMIO_CHANNEL_EXT)
			    & 0xF7BF);
	}
}