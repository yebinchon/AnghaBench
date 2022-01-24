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
struct TYPE_2__ {int /*<<< orphan*/  usb_ctrl_mtx; } ;
struct mt76_dev {TYPE_1__ usb; } ;

/* Variables and functions */
 int FUNC0 (struct mt76_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 FUNC4(struct mt76_dev *dev, u32 addr,
		     u32 mask, u32 val)
{
	FUNC2(&dev->usb.usb_ctrl_mtx);
	val |= FUNC0(dev, addr) & ~mask;
	FUNC1(dev, addr, val);
	FUNC3(&dev->usb.usb_ctrl_mtx);

	return val;
}