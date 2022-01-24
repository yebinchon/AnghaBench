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
struct xlgmac_ring {int dummy; } ;
struct xlgmac_pdata {int /*<<< orphan*/  netdev; } ;
struct xlgmac_dma_desc {int /*<<< orphan*/  desc3; int /*<<< orphan*/  desc2; int /*<<< orphan*/  desc1; int /*<<< orphan*/  desc0; } ;
struct xlgmac_desc_data {int /*<<< orphan*/  dma_desc_addr; struct xlgmac_dma_desc* dma_desc; } ;

/* Variables and functions */
 struct xlgmac_desc_data* FUNC0 (struct xlgmac_ring*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

void FUNC3(struct xlgmac_pdata *pdata,
			 struct xlgmac_ring *ring,
			 unsigned int idx,
			 unsigned int count,
			 unsigned int flag)
{
	struct xlgmac_desc_data *desc_data;
	struct xlgmac_dma_desc *dma_desc;

	while (count--) {
		desc_data = FUNC0(ring, idx);
		dma_desc = desc_data->dma_desc;

		FUNC2(pdata->netdev, "TX: dma_desc=%p, dma_desc_addr=%pad\n",
			   desc_data->dma_desc, &desc_data->dma_desc_addr);
		FUNC2(pdata->netdev,
			   "TX_NORMAL_DESC[%d %s] = %08x:%08x:%08x:%08x\n", idx,
			   (flag == 1) ? "QUEUED FOR TX" : "TX BY DEVICE",
			   FUNC1(dma_desc->desc0),
			   FUNC1(dma_desc->desc1),
			   FUNC1(dma_desc->desc2),
			   FUNC1(dma_desc->desc3));

		idx++;
	}
}