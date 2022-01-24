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
struct TYPE_2__ {int rx_intsup; int tx_intsup; int /*<<< orphan*/  txqueue_timer; int /*<<< orphan*/  rxqueue_timer; } ;
struct velocity_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  mac_regs; int /*<<< orphan*/  int_mask; TYPE_1__ options; } ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {int tx_coalesce_usecs; int rx_coalesce_usecs; int tx_max_coalesced_frames; int rx_max_coalesced_frames; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct velocity_info* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct velocity_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct velocity_info*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev,
		struct ethtool_coalesce *ecmd)
{
	struct velocity_info *vptr = FUNC4(dev);
	int max_us = 0x3f * 64;
	unsigned long flags;

	/* 6 bits of  */
	if (ecmd->tx_coalesce_usecs > max_us)
		return -EINVAL;
	if (ecmd->rx_coalesce_usecs > max_us)
		return -EINVAL;

	if (ecmd->tx_max_coalesced_frames > 0xff)
		return -EINVAL;
	if (ecmd->rx_max_coalesced_frames > 0xff)
		return -EINVAL;

	vptr->options.rx_intsup = ecmd->rx_max_coalesced_frames;
	vptr->options.tx_intsup = ecmd->tx_max_coalesced_frames;

	FUNC5(&vptr->options.rxqueue_timer,
			ecmd->rx_coalesce_usecs);
	FUNC5(&vptr->options.txqueue_timer,
			ecmd->tx_coalesce_usecs);

	/* Setup the interrupt suppression and queue timers */
	FUNC8(&vptr->lock, flags);
	FUNC1(vptr->mac_regs);
	FUNC6(vptr);
	FUNC7(vptr);

	FUNC3(vptr->int_mask, vptr->mac_regs);
	FUNC0(vptr->mac_regs);
	FUNC2(vptr->mac_regs);
	FUNC9(&vptr->lock, flags);

	return 0;
}