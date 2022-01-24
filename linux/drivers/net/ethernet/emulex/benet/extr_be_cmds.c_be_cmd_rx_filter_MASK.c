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
typedef  int u32 ;
struct device {int dummy; } ;
struct be_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int FUNC0 (struct be_adapter*,int,int) ; 
 int FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 

int FUNC3(struct be_adapter *adapter, u32 flags, u32 value)
{
	struct device *dev = &adapter->pdev->dev;

	if ((flags & FUNC1(adapter)) != flags) {
		FUNC2(dev, "Cannot set rx filter flags 0x%x\n", flags);
		FUNC2(dev, "Interface is capable of 0x%x flags only\n",
			 FUNC1(adapter));
	}
	flags &= FUNC1(adapter);
	if (!flags)
		return -ENOTSUPP;

	return FUNC0(adapter, flags, value);
}