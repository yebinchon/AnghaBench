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
struct net_device {int dummy; } ;
struct can_rx_offload {int /*<<< orphan*/  mailbox_read; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct net_device*,struct can_rx_offload*,unsigned int) ; 

int FUNC1(struct net_device *dev, struct can_rx_offload *offload, unsigned int weight)
{
	if (!offload->mailbox_read)
		return -EINVAL;

	return FUNC0(dev, offload, weight);
}