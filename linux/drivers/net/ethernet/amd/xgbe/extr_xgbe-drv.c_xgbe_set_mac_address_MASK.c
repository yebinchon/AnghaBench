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
struct xgbe_hw_if {int /*<<< orphan*/  (* set_mac_address ) (struct xgbe_prv_data*,int /*<<< orphan*/ ) ;} ;
struct xgbe_prv_data {struct xgbe_hw_if hw_if; } ;
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  addr_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xgbe_prv_data* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct xgbe_prv_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev, void *addr)
{
	struct xgbe_prv_data *pdata = FUNC3(netdev);
	struct xgbe_hw_if *hw_if = &pdata->hw_if;
	struct sockaddr *saddr = addr;

	FUNC0("-->xgbe_set_mac_address\n");

	if (!FUNC1(saddr->sa_data))
		return -EADDRNOTAVAIL;

	FUNC2(netdev->dev_addr, saddr->sa_data, netdev->addr_len);

	hw_if->set_mac_address(pdata, netdev->dev_addr);

	FUNC0("<--xgbe_set_mac_address\n");

	return 0;
}