#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int dma_address; } ;
struct gpmi_transfer {TYPE_2__ sgl; int /*<<< orphan*/  direction; } ;
struct TYPE_4__ {int /*<<< orphan*/  cur_cs; } ;
struct gpmi_nand_data {int auxiliary_phys; scalar_t__ bch; TYPE_1__ nand; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct gpmi_nand_data*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct gpmi_nand_data*) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int BM_GPMI_CTRL0_WORD_LENGTH ; 
 int BM_GPMI_ECCCTRL_ENABLE_ECC ; 
 int /*<<< orphan*/  BV_GPMI_CTRL0_ADDRESS__NAND_DATA ; 
 int /*<<< orphan*/  BV_GPMI_CTRL0_COMMAND_MODE__READ ; 
 int BV_GPMI_ECCCTRL_BUFFER_MASK__BCH_AUXONLY ; 
 int BV_GPMI_ECCCTRL_BUFFER_MASK__BCH_PAGE ; 
 int /*<<< orphan*/  BV_GPMI_ECCCTRL_ECC_CMD__BCH_DECODE ; 
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TRANS_NONE ; 
 int /*<<< orphan*/  LOCK_CS_ENABLE ; 
 int /*<<< orphan*/  MXS_DMA_CTRL_WAIT4END ; 
 struct dma_async_tx_descriptor* FUNC8 (struct dma_chan*,TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dma_chan* FUNC9 (struct gpmi_nand_data*) ; 
 struct gpmi_transfer* FUNC10 (struct gpmi_nand_data*) ; 
 struct dma_async_tx_descriptor* FUNC11 (struct dma_chan*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct gpmi_nand_data*,void*,int,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dma_async_tx_descriptor *FUNC13(
	struct gpmi_nand_data *this, void *buf, int raw_len, bool *direct)
{
	struct dma_async_tx_descriptor *desc;
	struct dma_chan *channel = FUNC9(this);
	struct gpmi_transfer *transfer;
	u32 pio[6] = {};

	transfer = FUNC10(this);
	if (!transfer)
		return NULL;

	transfer->direction = DMA_FROM_DEVICE;

	*direct = FUNC12(this, buf, raw_len, &transfer->sgl,
				   DMA_FROM_DEVICE);

	pio[0] =  FUNC2(BV_GPMI_CTRL0_COMMAND_MODE__READ)
		| BM_GPMI_CTRL0_WORD_LENGTH
		| FUNC3(this->nand.cur_cs, this)
		| FUNC4(LOCK_CS_ENABLE, this)
		| FUNC1(BV_GPMI_CTRL0_ADDRESS__NAND_DATA)
		| FUNC5(raw_len);

	if (this->bch) {
		pio[2] =  BM_GPMI_ECCCTRL_ENABLE_ECC
			| FUNC7(BV_GPMI_ECCCTRL_ECC_CMD__BCH_DECODE)
			| FUNC6(BV_GPMI_ECCCTRL_BUFFER_MASK__BCH_PAGE
				| BV_GPMI_ECCCTRL_BUFFER_MASK__BCH_AUXONLY);
		pio[3] = raw_len;
		pio[4] = transfer->sgl.dma_address;
		pio[5] = this->auxiliary_phys;
	}

	desc = FUNC11(channel, pio, FUNC0(pio),
				      DMA_TRANS_NONE, 0);
	if (!desc)
		return NULL;

	if (!this->bch)
		desc = FUNC8(channel, &transfer->sgl, 1,
					     DMA_DEV_TO_MEM,
					     MXS_DMA_CTRL_WAIT4END);

	return desc;
}