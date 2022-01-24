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
struct be_adapter {int uc_macs; int /*<<< orphan*/ * pmac_id; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct be_adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct be_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	int i;

	FUNC0(netdev, NULL);
	for (i = 0; i < adapter->uc_macs; i++)
		FUNC1(adapter, adapter->pmac_id[i + 1]);

	adapter->uc_macs = 0;
}