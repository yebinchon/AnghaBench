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
struct b43_wldev {int /*<<< orphan*/  wl; TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ bus_type; } ;

/* Variables and functions */
 scalar_t__ B43_BUS_SSB ; 
 int EOPNOTSUPP ; 
 int FUNC0 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*) ; 

__attribute__((used)) static int FUNC9(struct b43_wldev *dev)
{
	int err;

	if (dev->dev->bus_type != B43_BUS_SSB) {
		FUNC2(dev->wl, "LP-PHY is supported only on SSB!\n");
		return -EOPNOTSUPP;
	}

	FUNC7(dev); //FIXME should this be in prepare_structs?
	FUNC3(dev);
	FUNC6(dev);
	FUNC4(dev);
	err = FUNC0(dev, 7);
	if (err) {
		FUNC1(dev->wl, "Switch to channel 7 failed, error = %d.\n",
		       err);
	}
	FUNC8(dev);
	FUNC5(dev);
	//TODO ACI init

	return 0;
}