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
struct xge_pdata {struct xge_desc_ring* rx_ring; struct xge_desc_ring* tx_ring; } ;
struct xge_desc_ring {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  XGENE_ENET_NUM_DESC ; 
 struct xge_pdata* FUNC0 (struct net_device*) ; 
 struct xge_desc_ring* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xge_pdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct xge_pdata*) ; 

__attribute__((used)) static int FUNC6(struct net_device *ndev)
{
	struct xge_pdata *pdata = FUNC0(ndev);
	struct xge_desc_ring *ring;
	int ret;

	/* create tx ring */
	ring = FUNC1(ndev);
	if (!ring)
		goto err;

	pdata->tx_ring = ring;
	FUNC5(pdata);

	/* create rx ring */
	ring = FUNC1(ndev);
	if (!ring)
		goto err;

	pdata->rx_ring = ring;
	FUNC4(pdata);

	ret = FUNC3(ndev, XGENE_ENET_NUM_DESC);
	if (ret)
		goto err;

	return 0;
err:
	FUNC2(ndev);

	return -ENOMEM;
}