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
struct mt_gpdma_desc {int gpd_info; int bd_info; void* next; void* ptr; } ;
struct mt_bdma_desc {int gpd_info; int bd_info; void* next; void* ptr; } ;
struct msdc_host {TYPE_1__* dev_comp; } ;
struct msdc_dma {scalar_t__ bd_addr; scalar_t__ gpd_addr; struct mt_gpdma_desc* bd; struct mt_gpdma_desc* gpd; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_2__ {scalar_t__ support_64g; } ;

/* Variables and functions */
 int GPDMA_DESC_BDP ; 
 int MAX_BD_NUM ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct mt_gpdma_desc*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct msdc_host *host, struct msdc_dma *dma)
{
	struct mt_gpdma_desc *gpd = dma->gpd;
	struct mt_bdma_desc *bd = dma->bd;
	dma_addr_t dma_addr;
	int i;

	FUNC1(gpd, 0, sizeof(struct mt_gpdma_desc) * 2);

	dma_addr = dma->gpd_addr + sizeof(struct mt_gpdma_desc);
	gpd->gpd_info = GPDMA_DESC_BDP; /* hwo, cs, bd pointer */
	/* gpd->next is must set for desc DMA
	 * That's why must alloc 2 gpd structure.
	 */
	gpd->next = FUNC0(dma_addr);
	if (host->dev_comp->support_64g)
		gpd->gpd_info |= (FUNC2(dma_addr) & 0xf) << 24;

	dma_addr = dma->bd_addr;
	gpd->ptr = FUNC0(dma->bd_addr); /* physical address */
	if (host->dev_comp->support_64g)
		gpd->gpd_info |= (FUNC2(dma_addr) & 0xf) << 28;

	FUNC1(bd, 0, sizeof(struct mt_bdma_desc) * MAX_BD_NUM);
	for (i = 0; i < (MAX_BD_NUM - 1); i++) {
		dma_addr = dma->bd_addr + sizeof(*bd) * (i + 1);
		bd[i].next = FUNC0(dma_addr);
		if (host->dev_comp->support_64g)
			bd[i].bd_info |= (FUNC2(dma_addr) & 0xf) << 24;
	}
}