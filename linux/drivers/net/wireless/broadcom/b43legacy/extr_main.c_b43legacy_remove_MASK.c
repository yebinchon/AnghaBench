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
struct ssb_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ucode; } ;
struct b43legacy_wldev {TYPE_1__ fw; int /*<<< orphan*/  fw_load_complete; int /*<<< orphan*/  restart_work; } ;
struct b43legacy_wl {int /*<<< orphan*/  devlist; int /*<<< orphan*/  hw; struct b43legacy_wldev* current_dev; int /*<<< orphan*/  firmware_load; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ssb_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ssb_device*,struct b43legacy_wl*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 struct b43legacy_wl* FUNC7 (struct ssb_device*) ; 
 struct b43legacy_wldev* FUNC8 (struct ssb_device*) ; 

__attribute__((used)) static void FUNC9(struct ssb_device *dev)
{
	struct b43legacy_wl *wl = FUNC7(dev);
	struct b43legacy_wldev *wldev = FUNC8(dev);

	/* We must cancel any work here before unregistering from ieee80211,
	 * as the ieee80211 unreg will destroy the workqueue. */
	FUNC3(&wldev->restart_work);
	FUNC3(&wl->firmware_load);
	FUNC4(&wldev->fw_load_complete);

	FUNC0(!wl);
	if (!wldev->fw.ucode)
		return;			/* NULL if fw never loaded */
	if (wl->current_dev == wldev)
		FUNC5(wl->hw);

	FUNC1(dev);

	if (FUNC6(&wl->devlist))
		/* Last core on the chip unregistered.
		 * We can destroy common struct b43legacy_wl.
		 */
		FUNC2(dev, wl);
}