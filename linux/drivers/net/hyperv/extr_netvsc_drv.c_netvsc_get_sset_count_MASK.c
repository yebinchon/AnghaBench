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
struct netvsc_device {int dummy; } ;
struct net_device_context {int /*<<< orphan*/  nvdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
#define  ETH_SS_STATS 128 
 int NETVSC_GLOBAL_STATS_LEN ; 
 int NETVSC_PCPU_STATS_LEN ; 
 int FUNC0 (struct netvsc_device*) ; 
 int NETVSC_VF_STATS_LEN ; 
 struct net_device_context* FUNC1 (struct net_device*) ; 
 struct netvsc_device* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, int string_set)
{
	struct net_device_context *ndc = FUNC1(dev);
	struct netvsc_device *nvdev = FUNC2(ndc->nvdev);

	if (!nvdev)
		return -ENODEV;

	switch (string_set) {
	case ETH_SS_STATS:
		return NETVSC_GLOBAL_STATS_LEN
			+ NETVSC_VF_STATS_LEN
			+ FUNC0(nvdev)
			+ NETVSC_PCPU_STATS_LEN;
	default:
		return -EINVAL;
	}
}