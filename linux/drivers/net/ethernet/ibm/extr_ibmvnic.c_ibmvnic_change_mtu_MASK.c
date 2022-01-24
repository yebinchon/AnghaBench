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
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ mtu; } ;
struct ibmvnic_adapter {TYPE_1__ desired; } ;

/* Variables and functions */
 scalar_t__ ETH_HLEN ; 
 struct ibmvnic_adapter* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct ibmvnic_adapter*) ; 

__attribute__((used)) static int FUNC2(struct net_device *netdev, int new_mtu)
{
	struct ibmvnic_adapter *adapter = FUNC0(netdev);

	adapter->desired.mtu = new_mtu + ETH_HLEN;

	return FUNC1(adapter);
}