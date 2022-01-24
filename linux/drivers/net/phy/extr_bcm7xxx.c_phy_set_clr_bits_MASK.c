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
struct phy_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct phy_device*,int) ; 
 int FUNC1 (struct phy_device*,int,int) ; 

__attribute__((used)) static int FUNC2(struct phy_device *dev, int location,
					int set_mask, int clr_mask)
{
	int v, ret;

	v = FUNC0(dev, location);
	if (v < 0)
		return v;

	v &= ~clr_mask;
	v |= set_mask;

	ret = FUNC1(dev, location, v);
	if (ret < 0)
		return ret;

	return v;
}