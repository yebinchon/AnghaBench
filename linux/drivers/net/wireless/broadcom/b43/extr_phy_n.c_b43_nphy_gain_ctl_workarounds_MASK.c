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
struct TYPE_2__ {int rev; } ;
struct b43_wldev {TYPE_1__ phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*) ; 

__attribute__((used)) static void FUNC4(struct b43_wldev *dev)
{
	if (dev->phy.rev >= 19)
		FUNC0(dev);
	else if (dev->phy.rev >= 7)
		FUNC3(dev);
	else if (dev->phy.rev >= 3)
		FUNC2(dev);
	else
		FUNC1(dev);
}