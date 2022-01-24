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
struct xlgmac_hw_ops {int /*<<< orphan*/  (* set_mac_address ) (struct xlgmac_pdata*,int /*<<< orphan*/ ) ;} ;
struct xlgmac_pdata {struct xlgmac_hw_ops hw_ops; } ;
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  addr_len; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xlgmac_pdata* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct xlgmac_pdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev, void *addr)
{
	struct xlgmac_pdata *pdata = FUNC2(netdev);
	struct xlgmac_hw_ops *hw_ops = &pdata->hw_ops;
	struct sockaddr *saddr = addr;

	if (!FUNC0(saddr->sa_data))
		return -EADDRNOTAVAIL;

	FUNC1(netdev->dev_addr, saddr->sa_data, netdev->addr_len);

	hw_ops->set_mac_address(pdata, netdev->dev_addr);

	return 0;
}