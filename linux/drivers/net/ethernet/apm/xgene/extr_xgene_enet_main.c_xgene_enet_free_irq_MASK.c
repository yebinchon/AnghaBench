#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xgene_enet_pdata {int rxq_cnt; int cq_cnt; TYPE_1__** tx_ring; struct xgene_enet_desc_ring** rx_ring; } ;
struct xgene_enet_desc_ring {int /*<<< orphan*/  irq; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct xgene_enet_desc_ring* cp_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_DISABLE_UNLAZY ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ,struct xgene_enet_desc_ring*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct device* FUNC2 (struct net_device*) ; 
 struct xgene_enet_pdata* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *ndev)
{
	struct xgene_enet_pdata *pdata;
	struct xgene_enet_desc_ring *ring;
	struct device *dev;
	int i;

	pdata = FUNC3(ndev);
	dev = FUNC2(ndev);

	for (i = 0; i < pdata->rxq_cnt; i++) {
		ring = pdata->rx_ring[i];
		FUNC1(ring->irq, IRQ_DISABLE_UNLAZY);
		FUNC0(dev, ring->irq, ring);
	}

	for (i = 0; i < pdata->cq_cnt; i++) {
		ring = pdata->tx_ring[i]->cp_ring;
		FUNC1(ring->irq, IRQ_DISABLE_UNLAZY);
		FUNC0(dev, ring->irq, ring);
	}
}