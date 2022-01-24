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
typedef  int /*<<< orphan*/  u8 ;
struct mt76_txwi_cache {int /*<<< orphan*/  dma_addr; } ;
struct mt76_dev {TYPE_1__* drv; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int txwi_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mt76_txwi_cache *
FUNC3(struct mt76_dev *dev)
{
	struct mt76_txwi_cache *t;
	dma_addr_t addr;
	u8 *txwi;
	int size;

	size = FUNC0(dev->drv->txwi_size + sizeof(*t));
	txwi = FUNC1(dev->dev, size, GFP_ATOMIC);
	if (!txwi)
		return NULL;

	addr = FUNC2(dev->dev, txwi, dev->drv->txwi_size,
			      DMA_TO_DEVICE);
	t = (struct mt76_txwi_cache *)(txwi + dev->drv->txwi_size);
	t->dma_addr = addr;

	return t;
}