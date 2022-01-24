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
typedef  int /*<<< orphan*/  u32 ;
struct slic_tx_queue {unsigned int len; struct slic_tx_buffer* txbuffs; int /*<<< orphan*/  dma_pool; scalar_t__ done_idx; scalar_t__ put_idx; } ;
struct slic_tx_desc {void* type; scalar_t__ flags; int /*<<< orphan*/  cmd; void* hnd; } ;
struct slic_tx_buffer {int /*<<< orphan*/  desc_paddr; struct slic_tx_desc* desc; } ;
struct slic_device {int /*<<< orphan*/  netdev; TYPE_1__* pdev; struct slic_tx_queue txq; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SLIC_CMD_TYPE_DUMB ; 
 int /*<<< orphan*/  SLIC_CMD_XMT_REQ ; 
 unsigned int SLIC_NUM_TX_DESCS ; 
 int /*<<< orphan*/  SLIC_TX_DESC_ALIGN ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct slic_tx_desc*,int /*<<< orphan*/ ) ; 
 struct slic_tx_desc* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct slic_tx_buffer* FUNC5 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct slic_tx_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC8(struct slic_device *sdev)
{
	struct slic_tx_queue *txq = &sdev->txq;
	struct slic_tx_buffer *buff;
	struct slic_tx_desc *desc;
	unsigned int i;
	int err;

	txq->len = SLIC_NUM_TX_DESCS;
	txq->put_idx = 0;
	txq->done_idx = 0;

	txq->txbuffs = FUNC5(txq->len, sizeof(*buff), GFP_KERNEL);
	if (!txq->txbuffs)
		return -ENOMEM;

	txq->dma_pool = FUNC1("slic_pool", &sdev->pdev->dev,
					sizeof(*desc), SLIC_TX_DESC_ALIGN,
					4096);
	if (!txq->dma_pool) {
		err = -ENOMEM;
		FUNC7(sdev->netdev, "failed to create dma pool\n");
		goto free_buffs;
	}

	for (i = 0; i < txq->len; i++) {
		buff = &txq->txbuffs[i];
		desc = FUNC4(txq->dma_pool, GFP_KERNEL,
				       &buff->desc_paddr);
		if (!desc) {
			FUNC7(sdev->netdev,
				   "failed to alloc pool chunk (%i)\n", i);
			err = -ENOMEM;
			goto free_descs;
		}

		desc->hnd = FUNC0((u32)(i + 1));
		desc->cmd = SLIC_CMD_XMT_REQ;
		desc->flags = 0;
		desc->type = FUNC0(SLIC_CMD_TYPE_DUMB);
		buff->desc = desc;
	}

	return 0;

free_descs:
	while (i--) {
		buff = &txq->txbuffs[i];
		FUNC3(txq->dma_pool, buff->desc, buff->desc_paddr);
	}
	FUNC2(txq->dma_pool);

free_buffs:
	FUNC6(txq->txbuffs);

	return err;
}