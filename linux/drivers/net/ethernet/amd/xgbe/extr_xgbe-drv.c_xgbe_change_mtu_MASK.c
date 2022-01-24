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
struct xgbe_prv_data {int rx_buf_size; } ;
struct net_device {int mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct xgbe_prv_data* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xgbe_prv_data*) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev, int mtu)
{
	struct xgbe_prv_data *pdata = FUNC1(netdev);
	int ret;

	FUNC0("-->xgbe_change_mtu\n");

	ret = FUNC2(netdev, mtu);
	if (ret < 0)
		return ret;

	pdata->rx_buf_size = ret;
	netdev->mtu = mtu;

	FUNC3(pdata);

	FUNC0("<--xgbe_change_mtu\n");

	return 0;
}