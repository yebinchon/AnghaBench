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
struct port_info {int /*<<< orphan*/  port_id; int /*<<< orphan*/  mac; struct adapter* adapter; } ;
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  addr_len; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  LAN_MAC_IDX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct port_info* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, void *p)
{
	struct port_info *pi = FUNC2(dev);
	struct adapter *adapter = pi->adapter;
	struct sockaddr *addr = p;

	if (!FUNC0(addr->sa_data))
		return -EADDRNOTAVAIL;

	FUNC1(dev->dev_addr, addr->sa_data, dev->addr_len);
	FUNC4(&pi->mac, LAN_MAC_IDX, dev->dev_addr);
	if (FUNC3(adapter))
		FUNC5(adapter, pi->port_id);
	return 0;
}