#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xdp_umem {unsigned int npgs; TYPE_2__* pages; int /*<<< orphan*/ * pgs; } ;
struct i40e_vsi {struct i40e_pf* back; } ;
struct i40e_pf {TYPE_1__* pdev; } ;
struct device {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_4__ {scalar_t__ dma; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  I40E_RX_DMA_ATTR ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i40e_vsi *vsi, struct xdp_umem *umem)
{
	struct i40e_pf *pf = vsi->back;
	struct device *dev;
	unsigned int i, j;
	dma_addr_t dma;

	dev = &pf->pdev->dev;
	for (i = 0; i < umem->npgs; i++) {
		dma = FUNC0(dev, umem->pgs[i], 0, PAGE_SIZE,
					 DMA_BIDIRECTIONAL, I40E_RX_DMA_ATTR);
		if (FUNC1(dev, dma))
			goto out_unmap;

		umem->pages[i].dma = dma;
	}

	return 0;

out_unmap:
	for (j = 0; j < i; j++) {
		FUNC2(dev, umem->pages[i].dma, PAGE_SIZE,
				     DMA_BIDIRECTIONAL, I40E_RX_DMA_ATTR);
		umem->pages[i].dma = 0;
	}

	return -1;
}