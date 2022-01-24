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
typedef  int u16 ;
struct xge_pdata {TYPE_1__* pdev; } ;
struct xge_desc_ring {struct xge_desc_ring* pkt_info; int /*<<< orphan*/  dma_addr; scalar_t__ desc_addr; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int XGENE_ENET_DESC_SIZE ; 
 int XGENE_ENET_NUM_DESC ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xge_desc_ring*) ; 
 struct xge_pdata* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *ndev,
				 struct xge_desc_ring *ring)
{
	struct xge_pdata *pdata = FUNC2(ndev);
	struct device *dev = &pdata->pdev->dev;
	u16 size;

	if (!ring)
		return;

	size = XGENE_ENET_DESC_SIZE * XGENE_ENET_NUM_DESC;
	if (ring->desc_addr)
		FUNC0(dev, size, ring->desc_addr, ring->dma_addr);

	FUNC1(ring->pkt_info);
	FUNC1(ring);
}