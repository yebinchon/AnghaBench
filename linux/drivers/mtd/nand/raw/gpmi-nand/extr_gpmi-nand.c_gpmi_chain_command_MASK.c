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
typedef  int u32 ;
struct gpmi_transfer {int /*<<< orphan*/  sgl; int /*<<< orphan*/  direction; int /*<<< orphan*/ * cmdbuf; } ;
struct TYPE_2__ {int cur_cs; } ;
struct gpmi_nand_data {int /*<<< orphan*/  dev; TYPE_1__ nand; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,struct gpmi_nand_data*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct gpmi_nand_data*) ; 
 int FUNC5 (int) ; 
 int BM_GPMI_CTRL0_ADDRESS_INCREMENT ; 
 int BM_GPMI_CTRL0_WORD_LENGTH ; 
 int /*<<< orphan*/  BV_GPMI_CTRL0_ADDRESS__NAND_CLE ; 
 int /*<<< orphan*/  BV_GPMI_CTRL0_COMMAND_MODE__WRITE ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  DMA_TRANS_NONE ; 
 int /*<<< orphan*/  LOCK_CS_ENABLE ; 
 int /*<<< orphan*/  MXS_DMA_CTRL_WAIT4END ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC7 (struct dma_chan*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dma_chan* FUNC8 (struct gpmi_nand_data*) ; 
 struct gpmi_transfer* FUNC9 (struct gpmi_nand_data*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 struct dma_async_tx_descriptor* FUNC11 (struct dma_chan*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct dma_async_tx_descriptor *FUNC13(
	struct gpmi_nand_data *this, u8 cmd, const u8 *addr, int naddr)
{
	struct dma_chan *channel = FUNC8(this);
	struct dma_async_tx_descriptor *desc;
	struct gpmi_transfer *transfer;
	int chip = this->nand.cur_cs;
	u32 pio[3];

	/* [1] send out the PIO words */
	pio[0] = FUNC2(BV_GPMI_CTRL0_COMMAND_MODE__WRITE)
		| BM_GPMI_CTRL0_WORD_LENGTH
		| FUNC3(chip, this)
		| FUNC4(LOCK_CS_ENABLE, this)
		| FUNC1(BV_GPMI_CTRL0_ADDRESS__NAND_CLE)
		| BM_GPMI_CTRL0_ADDRESS_INCREMENT
		| FUNC5(naddr + 1);
	pio[1] = 0;
	pio[2] = 0;
	desc = FUNC11(channel, pio, FUNC0(pio),
				      DMA_TRANS_NONE, 0);
	if (!desc)
		return NULL;

	transfer = FUNC9(this);
	if (!transfer)
		return NULL;

	transfer->cmdbuf[0] = cmd;
	if (naddr)
		FUNC10(&transfer->cmdbuf[1], addr, naddr);

	FUNC12(&transfer->sgl, transfer->cmdbuf, naddr + 1);
	FUNC6(this->dev, &transfer->sgl, 1, DMA_TO_DEVICE);

	transfer->direction = DMA_TO_DEVICE;

	desc = FUNC7(channel, &transfer->sgl, 1, DMA_MEM_TO_DEV,
				       MXS_DMA_CTRL_WAIT4END);
	return desc;
}