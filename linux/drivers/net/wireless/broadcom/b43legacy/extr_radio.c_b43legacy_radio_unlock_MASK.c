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
struct b43legacy_wldev {int dummy; } ;

/* Variables and functions */
 int B43legacy_MACCTL_RADIOLOCK ; 
 int /*<<< orphan*/  B43legacy_MMIO_MACCTL ; 
 int /*<<< orphan*/  B43legacy_MMIO_PHY_VER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct b43legacy_wldev *dev)
{
	u32 status;

	FUNC1(dev, B43legacy_MMIO_PHY_VER); /* dummy read */
	status = FUNC2(dev, B43legacy_MMIO_MACCTL);
	FUNC0(!(status & B43legacy_MACCTL_RADIOLOCK));
	status &= ~B43legacy_MACCTL_RADIOLOCK;
	FUNC3(dev, B43legacy_MMIO_MACCTL, status);
}