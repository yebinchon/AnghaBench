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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct ei_device {scalar_t__ mem; } ;
struct ax_device {TYPE_1__* plat; } ;
struct TYPE_2__ {int /*<<< orphan*/  gpoc_val; } ;

/* Variables and functions */
 int /*<<< orphan*/  AX_GPOC_PPDSET ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct ei_device* FUNC2 (struct net_device*) ; 
 struct ax_device* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev, int on)
{
	struct ei_device *ei_local = FUNC2(dev);
	struct ax_device *ax = FUNC3(dev);

	u8 reg_gpoc =  ax->plat->gpoc_val;

	if (!!on)
		reg_gpoc &= ~AX_GPOC_PPDSET;
	else
		reg_gpoc |= AX_GPOC_PPDSET;

	FUNC1(reg_gpoc, ei_local->mem + FUNC0(0x17));
}