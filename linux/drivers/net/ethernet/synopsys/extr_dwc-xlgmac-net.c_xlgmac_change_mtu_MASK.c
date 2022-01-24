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
struct xlgmac_pdata {int rx_buf_size; } ;
struct net_device {int mtu; } ;

/* Variables and functions */
 struct xlgmac_pdata* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct xlgmac_pdata*) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev, int mtu)
{
	struct xlgmac_pdata *pdata = FUNC0(netdev);
	int ret;

	ret = FUNC1(netdev, mtu);
	if (ret < 0)
		return ret;

	pdata->rx_buf_size = ret;
	netdev->mtu = mtu;

	FUNC2(pdata);

	return 0;
}