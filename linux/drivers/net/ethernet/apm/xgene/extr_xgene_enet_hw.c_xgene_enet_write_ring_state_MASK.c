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
struct xgene_enet_desc_ring {int /*<<< orphan*/ * state; int /*<<< orphan*/  num; int /*<<< orphan*/  ndev; } ;
struct TYPE_2__ {int num_ring_config; } ;

/* Variables and functions */
 scalar_t__ CSR_RING_CONFIG ; 
 scalar_t__ CSR_RING_WR_BASE ; 
 struct xgene_enet_pdata* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xgene_enet_desc_ring*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct xgene_enet_desc_ring *ring)
{
	struct xgene_enet_pdata *pdata = FUNC0(ring->ndev);
	int i;

	FUNC1(ring, CSR_RING_CONFIG, ring->num);
	for (i = 0; i < pdata->ring_ops->num_ring_config; i++) {
		FUNC1(ring, CSR_RING_WR_BASE + (i * 4),
				     ring->state[i]);
	}
}