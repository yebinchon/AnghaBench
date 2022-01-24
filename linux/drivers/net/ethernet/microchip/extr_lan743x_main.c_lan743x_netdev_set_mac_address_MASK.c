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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct lan743x_adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct net_device*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lan743x_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lan743x_adapter*) ; 
 struct lan743x_adapter* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev,
					  void *addr)
{
	struct lan743x_adapter *adapter = FUNC4(netdev);
	struct sockaddr *sock_addr = addr;
	int ret;

	ret = FUNC0(netdev, sock_addr);
	if (ret)
		return ret;
	FUNC1(netdev->dev_addr, sock_addr->sa_data);
	FUNC2(adapter, sock_addr->sa_data);
	FUNC3(adapter);
	return 0;
}