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
struct mei_me_hw {scalar_t__ d0i3_supported; } ;
struct mei_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mei_device*) ; 
 int FUNC1 (struct mei_device*) ; 
 struct mei_me_hw* FUNC2 (struct mei_device*) ; 

int FUNC3(struct mei_device *dev)
{
	struct mei_me_hw *hw = FUNC2(dev);

	if (hw->d0i3_supported)
		return FUNC0(dev);
	else
		return FUNC1(dev);
}