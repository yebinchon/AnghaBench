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
typedef  int /*<<< orphan*/  u32 ;
struct port_info {int /*<<< orphan*/  eth_flags; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct adapter {int /*<<< orphan*/  eth_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRIV_FLAGS_ADAP ; 
 int /*<<< orphan*/  PRIV_FLAGS_PORT ; 
 struct port_info* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct net_device *netdev, u32 flags)
{
	struct port_info *pi = FUNC0(netdev);
	struct adapter *adapter = pi->adapter;

	FUNC1(&adapter->eth_flags, flags, PRIV_FLAGS_ADAP);
	FUNC1(&pi->eth_flags, flags, PRIV_FLAGS_PORT);

	return 0;
}