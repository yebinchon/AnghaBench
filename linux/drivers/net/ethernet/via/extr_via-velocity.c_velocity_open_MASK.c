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
struct velocity_info {int /*<<< orphan*/  flags; int /*<<< orphan*/  napi; int /*<<< orphan*/  mac_regs; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  irq; int /*<<< orphan*/  mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  PCI_D0 ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 int /*<<< orphan*/  VELOCITY_FLAGS_OPENED ; 
 int /*<<< orphan*/  VELOCITY_INIT_COLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct velocity_info* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct velocity_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct velocity_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct velocity_info*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct velocity_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  velocity_intr ; 
 int /*<<< orphan*/  FUNC9 (struct velocity_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev)
{
	struct velocity_info *vptr = FUNC2(dev);
	int ret;

	ret = FUNC8(vptr, dev->mtu);
	if (ret < 0)
		goto out;

	/* Ensure chip is running */
	FUNC9(vptr, PCI_D0);

	FUNC7(vptr, VELOCITY_INIT_COLD);

	ret = FUNC4(dev->irq, velocity_intr, IRQF_SHARED,
			  dev->name, dev);
	if (ret < 0) {
		/* Power down the chip */
		FUNC9(vptr, PCI_D3hot);
		FUNC5(vptr);
		goto out;
	}

	FUNC6(vptr);

	FUNC0(vptr->mac_regs);
	FUNC3(dev);
	FUNC1(&vptr->napi);
	vptr->flags |= VELOCITY_FLAGS_OPENED;
out:
	return ret;
}