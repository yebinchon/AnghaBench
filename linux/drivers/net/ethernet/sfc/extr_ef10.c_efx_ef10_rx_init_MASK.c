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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_3__ {int len; scalar_t__ dma_addr; } ;
struct TYPE_4__ {TYPE_1__ buf; } ;
struct efx_rx_queue {TYPE_2__ rxd; scalar_t__ ptr_mask; scalar_t__ scatter_len; scalar_t__ scatter_n; struct efx_nic* efx; } ;
struct efx_nic {int /*<<< orphan*/  net_dev; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {scalar_t__ vport_id; } ;
struct efx_channel {scalar_t__ channel; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EFX_BUF_SIZE ; 
 int EFX_MAX_DMAQ_SIZE ; 
 int /*<<< orphan*/  INIT_RXQ_IN_DMA_ADDR ; 
 int /*<<< orphan*/  INIT_RXQ_IN_FLAGS ; 
 int /*<<< orphan*/  INIT_RXQ_IN_FLAG_PREFIX ; 
 int /*<<< orphan*/  INIT_RXQ_IN_FLAG_TIMESTAMP ; 
 int /*<<< orphan*/  INIT_RXQ_IN_INSTANCE ; 
 int /*<<< orphan*/  INIT_RXQ_IN_LABEL ; 
 int /*<<< orphan*/  INIT_RXQ_IN_OWNER_ID ; 
 int /*<<< orphan*/  INIT_RXQ_IN_PORT_ID ; 
 int /*<<< orphan*/  INIT_RXQ_IN_SIZE ; 
 int /*<<< orphan*/  INIT_RXQ_IN_TARGET_EVQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  MC_CMD_INIT_RXQ ; 
 size_t FUNC5 (size_t) ; 
 scalar_t__ MC_CMD_INIT_RXQ_OUT_LEN ; 
 int FUNC6 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct efx_channel* FUNC7 (struct efx_rx_queue*) ; 
 scalar_t__ FUNC8 (struct efx_rx_queue*) ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  inbuf ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct efx_rx_queue *rx_queue)
{
	FUNC1(inbuf,
			 FUNC5(EFX_MAX_DMAQ_SIZE * 8 /
						EFX_BUF_SIZE));
	struct efx_channel *channel = FUNC7(rx_queue);
	size_t entries = rx_queue->rxd.buf.len / EFX_BUF_SIZE;
	struct efx_nic *efx = rx_queue->efx;
	struct efx_ef10_nic_data *nic_data = efx->nic_data;
	size_t inlen;
	dma_addr_t dma_addr;
	int rc;
	int i;
	FUNC0(MC_CMD_INIT_RXQ_OUT_LEN != 0);

	rx_queue->scatter_n = 0;
	rx_queue->scatter_len = 0;

	FUNC4(inbuf, INIT_RXQ_IN_SIZE, rx_queue->ptr_mask + 1);
	FUNC4(inbuf, INIT_RXQ_IN_TARGET_EVQ, channel->channel);
	FUNC4(inbuf, INIT_RXQ_IN_LABEL, FUNC8(rx_queue));
	FUNC4(inbuf, INIT_RXQ_IN_INSTANCE,
		       FUNC8(rx_queue));
	FUNC2(inbuf, INIT_RXQ_IN_FLAGS,
			      INIT_RXQ_IN_FLAG_PREFIX, 1,
			      INIT_RXQ_IN_FLAG_TIMESTAMP, 1);
	FUNC4(inbuf, INIT_RXQ_IN_OWNER_ID, 0);
	FUNC4(inbuf, INIT_RXQ_IN_PORT_ID, nic_data->vport_id);

	dma_addr = rx_queue->rxd.buf.dma_addr;

	FUNC10(efx, hw, efx->net_dev, "pushing RXQ %d. %zu entries (%llx)\n",
		  FUNC8(rx_queue), entries, (u64)dma_addr);

	for (i = 0; i < entries; ++i) {
		FUNC3(inbuf, INIT_RXQ_IN_DMA_ADDR, i, dma_addr);
		dma_addr += EFX_BUF_SIZE;
	}

	inlen = FUNC5(entries);

	rc = FUNC6(efx, MC_CMD_INIT_RXQ, inbuf, inlen,
			  NULL, 0, NULL);
	if (rc)
		FUNC9(efx->net_dev, "failed to initialise RXQ %d\n",
			    FUNC8(rx_queue));
}