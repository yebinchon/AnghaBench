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
struct vmxnet3_adapter {int dummy; } ;
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vmxnet3_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct vmxnet3_adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct net_device *netdev, void *p)
{
	struct sockaddr *addr = p;
	struct vmxnet3_adapter *adapter = FUNC1(netdev);

	FUNC0(netdev->dev_addr, addr->sa_data, netdev->addr_len);
	FUNC2(adapter, addr->sa_data);

	return 0;
}