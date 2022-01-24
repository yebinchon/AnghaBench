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
typedef  int /*<<< orphan*/  u32 ;
struct mei_me_hw {scalar_t__ d0i3_supported; } ;
struct mei_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mei_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_device*) ; 
 struct mei_me_hw* FUNC2 (struct mei_device*) ; 

__attribute__((used)) static void FUNC3(struct mei_device *dev, u32 intr_source)
{
	struct mei_me_hw *hw = FUNC2(dev);

	if (hw->d0i3_supported)
		FUNC0(dev, intr_source);
	else
		FUNC1(dev);
}