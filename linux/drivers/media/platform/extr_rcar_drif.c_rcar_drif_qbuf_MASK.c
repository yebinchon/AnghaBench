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
struct rcar_drif_sdr {int hwbuf_size; } ;
struct rcar_drif {int /*<<< orphan*/  dmach; int /*<<< orphan*/  num; int /*<<< orphan*/  dma_handle; struct rcar_drif_sdr* sdr; } ;
struct dma_async_tx_descriptor {struct rcar_drif* callback_param; int /*<<< orphan*/  callback; } ;
typedef  int /*<<< orphan*/  dma_cookie_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int DMA_CTRL_ACK ; 
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int DMA_PREP_INTERRUPT ; 
 int EIO ; 
 int RCAR_DRIF_NUM_HWBUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  rcar_drif_dma_complete ; 
 int /*<<< orphan*/  FUNC4 (struct rcar_drif_sdr*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct rcar_drif *ch)
{
	struct rcar_drif_sdr *sdr = ch->sdr;
	dma_addr_t addr = ch->dma_handle;
	struct dma_async_tx_descriptor *rxd;
	dma_cookie_t cookie;
	int ret = -EIO;

	/* Setup cyclic DMA with given buffers */
	rxd = FUNC2(ch->dmach, addr,
					sdr->hwbuf_size * RCAR_DRIF_NUM_HWBUFS,
					sdr->hwbuf_size, DMA_DEV_TO_MEM,
					DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
	if (!rxd) {
		FUNC4(sdr, "ch%u: prep dma cyclic failed\n", ch->num);
		return ret;
	}

	/* Submit descriptor */
	rxd->callback = rcar_drif_dma_complete;
	rxd->callback_param = ch;
	cookie = FUNC3(rxd);
	if (FUNC1(cookie)) {
		FUNC4(sdr, "ch%u: dma submit failed\n", ch->num);
		return ret;
	}

	FUNC0(ch->dmach);
	return 0;
}