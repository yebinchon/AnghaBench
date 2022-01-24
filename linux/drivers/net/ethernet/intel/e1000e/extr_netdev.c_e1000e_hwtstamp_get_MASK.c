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
struct ifreq {int /*<<< orphan*/  ifr_data; } ;
struct e1000_adapter {int /*<<< orphan*/  hwtstamp_config; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct e1000_adapter* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *netdev, struct ifreq *ifr)
{
	struct e1000_adapter *adapter = FUNC1(netdev);

	return FUNC0(ifr->ifr_data, &adapter->hwtstamp_config,
			    sizeof(adapter->hwtstamp_config)) ? -EFAULT : 0;
}