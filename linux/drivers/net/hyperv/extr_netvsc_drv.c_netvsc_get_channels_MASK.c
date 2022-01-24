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
struct netvsc_device {int /*<<< orphan*/  num_chn; int /*<<< orphan*/  max_chn; } ;
struct net_device_context {int /*<<< orphan*/  nvdev; } ;
struct net_device {int dummy; } ;
struct ethtool_channels {int /*<<< orphan*/  combined_count; int /*<<< orphan*/  max_combined; } ;

/* Variables and functions */
 struct net_device_context* FUNC0 (struct net_device*) ; 
 struct netvsc_device* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct net_device *net,
				struct ethtool_channels *channel)
{
	struct net_device_context *net_device_ctx = FUNC0(net);
	struct netvsc_device *nvdev = FUNC1(net_device_ctx->nvdev);

	if (nvdev) {
		channel->max_combined	= nvdev->max_chn;
		channel->combined_count = nvdev->num_chn;
	}
}