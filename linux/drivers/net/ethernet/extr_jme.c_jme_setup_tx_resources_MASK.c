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
struct jme_ring {unsigned long dmaalloc; int /*<<< orphan*/ * bufinf; scalar_t__ dma; int /*<<< orphan*/ * desc; scalar_t__ alloc; int /*<<< orphan*/  nr_free; int /*<<< orphan*/  next_to_clean; scalar_t__ next_to_use; } ;
struct jme_buffer_info {int dummy; } ;
struct jme_adapter {int /*<<< orphan*/  tx_ring_size; TYPE_1__* pdev; struct jme_ring* txring; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  RING_DESC_ALIGN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,unsigned long) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(struct jme_adapter *jme)
{
	struct jme_ring *txring = &(jme->txring[0]);

	txring->alloc = FUNC3(&(jme->pdev->dev),
				   FUNC1(jme->tx_ring_size),
				   &(txring->dmaalloc),
				   GFP_ATOMIC);

	if (!txring->alloc)
		goto err_set_null;

	/*
	 * 16 Bytes align
	 */
	txring->desc		= (void *)FUNC0((unsigned long)(txring->alloc),
						RING_DESC_ALIGN);
	txring->dma		= FUNC0(txring->dmaalloc, RING_DESC_ALIGN);
	txring->next_to_use	= 0;
	FUNC2(&txring->next_to_clean, 0);
	FUNC2(&txring->nr_free, jme->tx_ring_size);

	txring->bufinf		= FUNC5(jme->tx_ring_size,
						sizeof(struct jme_buffer_info),
						GFP_ATOMIC);
	if (FUNC6(!(txring->bufinf)))
		goto err_free_txring;

	return 0;

err_free_txring:
	FUNC4(&(jme->pdev->dev),
			  FUNC1(jme->tx_ring_size),
			  txring->alloc,
			  txring->dmaalloc);

err_set_null:
	txring->desc = NULL;
	txring->dmaalloc = 0;
	txring->dma = 0;
	txring->bufinf = NULL;

	return -ENOMEM;
}