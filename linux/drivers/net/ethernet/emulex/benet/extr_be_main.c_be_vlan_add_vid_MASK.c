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
typedef  scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct be_adapter {int /*<<< orphan*/  rx_filter_lock; int /*<<< orphan*/  vlans_added; int /*<<< orphan*/  vids; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int FUNC0 (struct be_adapter*) ; 
 scalar_t__ FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct be_adapter* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct net_device *netdev, __be16 proto, u16 vid)
{
	struct be_adapter *adapter = FUNC4(netdev);
	int status = 0;

	FUNC2(&adapter->rx_filter_lock);

	/* Packets with VID 0 are always received by Lancer by default */
	if (FUNC1(adapter) && vid == 0)
		goto done;

	if (FUNC6(vid, adapter->vids))
		goto done;

	FUNC5(vid, adapter->vids);
	adapter->vlans_added++;

	status = FUNC0(adapter);
done:
	FUNC3(&adapter->rx_filter_lock);
	return status;
}