#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {unsigned int max_queues; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct fm10k_intfc {TYPE_2__ hw; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int FUNC2 (struct net_device*) ; 
 struct fm10k_intfc* FUNC3 (struct net_device*) ; 

__attribute__((used)) static unsigned int FUNC4(struct net_device *dev)
{
	struct fm10k_intfc *interface = FUNC3(dev);
	unsigned int max_combined = interface->hw.mac.max_queues;
	u8 tcs = FUNC2(dev);

	/* For QoS report channels per traffic class */
	if (tcs > 1)
		max_combined = FUNC0((FUNC1(max_combined / tcs) - 1));

	return max_combined;
}