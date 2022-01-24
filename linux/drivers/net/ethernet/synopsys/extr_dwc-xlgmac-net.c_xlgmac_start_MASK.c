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
struct xlgmac_hw_ops {int /*<<< orphan*/  (* exit ) (struct xlgmac_pdata*) ;int /*<<< orphan*/  (* enable_rx ) (struct xlgmac_pdata*) ;int /*<<< orphan*/  (* enable_tx ) (struct xlgmac_pdata*) ;int /*<<< orphan*/  (* init ) (struct xlgmac_pdata*) ;} ;
struct xlgmac_pdata {struct net_device* netdev; struct xlgmac_hw_ops hw_ops; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct xlgmac_pdata*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct xlgmac_pdata*,int) ; 
 int FUNC7 (struct xlgmac_pdata*) ; 

__attribute__((used)) static int FUNC8(struct xlgmac_pdata *pdata)
{
	struct xlgmac_hw_ops *hw_ops = &pdata->hw_ops;
	struct net_device *netdev = pdata->netdev;
	int ret;

	hw_ops->init(pdata);
	FUNC6(pdata, 1);

	ret = FUNC7(pdata);
	if (ret)
		goto err_napi;

	hw_ops->enable_tx(pdata);
	hw_ops->enable_rx(pdata);
	FUNC0(netdev);

	return 0;

err_napi:
	FUNC5(pdata, 1);
	hw_ops->exit(pdata);

	return ret;
}