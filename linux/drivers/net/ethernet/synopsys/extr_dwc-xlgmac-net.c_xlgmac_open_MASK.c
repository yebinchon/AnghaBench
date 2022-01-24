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
struct xlgmac_desc_ops {int (* alloc_channles_and_rings ) (struct xlgmac_pdata*) ;int /*<<< orphan*/  (* free_channels_and_rings ) (struct xlgmac_pdata*) ;} ;
struct xlgmac_pdata {int rx_buf_size; int /*<<< orphan*/  restart_work; struct xlgmac_desc_ops desc_ops; } ;
struct net_device {int /*<<< orphan*/  mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct xlgmac_pdata* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct xlgmac_pdata*) ; 
 int FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  xlgmac_restart ; 
 int FUNC6 (struct xlgmac_pdata*) ; 

__attribute__((used)) static int FUNC7(struct net_device *netdev)
{
	struct xlgmac_pdata *pdata = FUNC1(netdev);
	struct xlgmac_desc_ops *desc_ops;
	int ret;

	desc_ops = &pdata->desc_ops;

	/* TODO: Initialize the phy */

	/* Calculate the Rx buffer size before allocating rings */
	ret = FUNC4(netdev, netdev->mtu);
	if (ret < 0)
		return ret;
	pdata->rx_buf_size = ret;

	/* Allocate the channels and rings */
	ret = desc_ops->alloc_channles_and_rings(pdata);
	if (ret)
		return ret;

	FUNC0(&pdata->restart_work, xlgmac_restart);
	FUNC5(pdata);

	ret = FUNC6(pdata);
	if (ret)
		goto err_channels_and_rings;

	return 0;

err_channels_and_rings:
	desc_ops->free_channels_and_rings(pdata);

	return ret;
}