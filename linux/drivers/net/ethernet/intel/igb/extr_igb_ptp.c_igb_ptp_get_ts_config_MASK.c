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
struct hwtstamp_config {int dummy; } ;
struct igb_adapter {struct hwtstamp_config tstamp_config; } ;
struct ifreq {int /*<<< orphan*/  ifr_data; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct hwtstamp_config*,int) ; 
 struct igb_adapter* FUNC1 (struct net_device*) ; 

int FUNC2(struct net_device *netdev, struct ifreq *ifr)
{
	struct igb_adapter *adapter = FUNC1(netdev);
	struct hwtstamp_config *config = &adapter->tstamp_config;

	return FUNC0(ifr->ifr_data, config, sizeof(*config)) ?
		-EFAULT : 0;
}