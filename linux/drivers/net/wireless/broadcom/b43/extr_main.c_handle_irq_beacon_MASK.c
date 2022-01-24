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
struct b43_wldev {int irq_mask; struct b43_wl* wl; } ;
struct b43_wl {int beacon_templates_virgin; } ;

/* Variables and functions */
 int B43_IRQ_BEACON ; 
 int B43_MACCMD_BEACON0_VALID ; 
 int B43_MACCMD_BEACON1_VALID ; 
 int /*<<< orphan*/  B43_MMIO_GEN_IRQ_REASON ; 
 int /*<<< orphan*/  B43_MMIO_MACCMD ; 
 int /*<<< orphan*/  NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  NL80211_IFTYPE_MESH_POINT ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wl*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct b43_wldev *dev)
{
	struct b43_wl *wl = dev->wl;
	u32 cmd, beacon0_valid, beacon1_valid;

	if (!FUNC0(wl, NL80211_IFTYPE_AP) &&
	    !FUNC0(wl, NL80211_IFTYPE_MESH_POINT) &&
	    !FUNC0(wl, NL80211_IFTYPE_ADHOC))
		return;

	/* This is the bottom half of the asynchronous beacon update. */

	/* Ignore interrupt in the future. */
	dev->irq_mask &= ~B43_IRQ_BEACON;

	cmd = FUNC1(dev, B43_MMIO_MACCMD);
	beacon0_valid = (cmd & B43_MACCMD_BEACON0_VALID);
	beacon1_valid = (cmd & B43_MACCMD_BEACON1_VALID);

	/* Schedule interrupt manually, if busy. */
	if (beacon0_valid && beacon1_valid) {
		FUNC4(dev, B43_MMIO_GEN_IRQ_REASON, B43_IRQ_BEACON);
		dev->irq_mask |= B43_IRQ_BEACON;
		return;
	}

	if (FUNC5(wl->beacon_templates_virgin)) {
		/* We never uploaded a beacon before.
		 * Upload both templates now, but only mark one valid. */
		wl->beacon_templates_virgin = false;
		FUNC2(dev);
		FUNC3(dev);
		cmd = FUNC1(dev, B43_MMIO_MACCMD);
		cmd |= B43_MACCMD_BEACON0_VALID;
		FUNC4(dev, B43_MMIO_MACCMD, cmd);
	} else {
		if (!beacon0_valid) {
			FUNC2(dev);
			cmd = FUNC1(dev, B43_MMIO_MACCMD);
			cmd |= B43_MACCMD_BEACON0_VALID;
			FUNC4(dev, B43_MMIO_MACCMD, cmd);
		} else if (!beacon1_valid) {
			FUNC3(dev);
			cmd = FUNC1(dev, B43_MMIO_MACCMD);
			cmd |= B43_MACCMD_BEACON1_VALID;
			FUNC4(dev, B43_MMIO_MACCMD, cmd);
		}
	}
}