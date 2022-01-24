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
struct igb_adapter {int /*<<< orphan*/  vfs_allocated_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct igb_adapter*,unsigned char const*,int /*<<< orphan*/ ) ; 
 struct igb_adapter* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *netdev, const unsigned char *addr)
{
	struct igb_adapter *adapter = FUNC1(netdev);

	FUNC0(adapter, addr, adapter->vfs_allocated_count);

	return 0;
}