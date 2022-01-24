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
struct device {int dummy; } ;
struct b43_wldev {TYPE_1__* dev; } ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 scalar_t__ B43_STAT_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct b43_wldev*) ; 
 int /*<<< orphan*/  dev_attr_interference ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ *) ; 

int FUNC3(struct b43_wldev *wldev)
{
	struct device *dev = wldev->dev->dev;

	FUNC0(FUNC1(wldev) != B43_STAT_INITIALIZED);

	return FUNC2(dev, &dev_attr_interference);
}