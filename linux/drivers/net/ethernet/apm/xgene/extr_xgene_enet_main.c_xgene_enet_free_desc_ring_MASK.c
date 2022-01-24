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
struct xgene_enet_pdata {TYPE_1__* ring_ops; } ;
struct xgene_enet_desc_ring {int /*<<< orphan*/  dma; int /*<<< orphan*/  desc_addr; int /*<<< orphan*/  size; int /*<<< orphan*/  ndev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* clear ) (struct xgene_enet_desc_ring*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,struct xgene_enet_desc_ring*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct device* FUNC2 (int /*<<< orphan*/ ) ; 
 struct xgene_enet_pdata* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xgene_enet_desc_ring*) ; 

__attribute__((used)) static void FUNC5(struct xgene_enet_desc_ring *ring)
{
	struct xgene_enet_pdata *pdata;
	struct device *dev;

	if (!ring)
		return;

	dev = FUNC2(ring->ndev);
	pdata = FUNC3(ring->ndev);

	if (ring->desc_addr) {
		pdata->ring_ops->clear(ring);
		FUNC1(dev, ring->size, ring->desc_addr, ring->dma);
	}
	FUNC0(dev, ring);
}