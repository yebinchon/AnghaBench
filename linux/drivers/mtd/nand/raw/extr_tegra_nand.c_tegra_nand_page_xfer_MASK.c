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
typedef  int u32 ;
struct tegra_nand_controller {int /*<<< orphan*/  dev; int /*<<< orphan*/  dma_complete; int /*<<< orphan*/  command_complete; scalar_t__ regs; int /*<<< orphan*/  cur_cs; } ;
struct nand_chip {int options; int /*<<< orphan*/  cur_cs; int /*<<< orphan*/  controller; } ;
struct mtd_info {int writesize; int oobsize; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  int dma_addr_t ;

/* Variables and functions */
 scalar_t__ ADDR_REG1 ; 
 scalar_t__ ADDR_REG2 ; 
 scalar_t__ CMD_REG1 ; 
 scalar_t__ CMD_REG2 ; 
 scalar_t__ COMMAND ; 
 int COMMAND_AFT_DAT ; 
 int COMMAND_ALE ; 
 int FUNC0 (int) ; 
 int COMMAND_A_VALID ; 
 int COMMAND_B_VALID ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int COMMAND_CLE ; 
 int COMMAND_GO ; 
 int COMMAND_RBSY_CHK ; 
 int COMMAND_RX ; 
 int COMMAND_SEC_CMD ; 
 int FUNC2 (int) ; 
 int COMMAND_TX ; 
 scalar_t__ DATA_PTR ; 
 scalar_t__ DMA_CFG_A ; 
 scalar_t__ DMA_CFG_B ; 
 int DMA_FROM_DEVICE ; 
 scalar_t__ DMA_MST_CTRL ; 
 int DMA_MST_CTRL_BURST_16 ; 
 int DMA_MST_CTRL_EN_A ; 
 int DMA_MST_CTRL_EN_B ; 
 int DMA_MST_CTRL_GO ; 
 int DMA_MST_CTRL_IE_DONE ; 
 int DMA_MST_CTRL_IN ; 
 int DMA_MST_CTRL_IS_DONE ; 
 int DMA_MST_CTRL_OUT ; 
 int DMA_MST_CTRL_PERF_EN ; 
 int DMA_MST_CTRL_REUSE ; 
 int DMA_TO_DEVICE ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 int NAND_CMD_PAGEPROG ; 
 int NAND_CMD_READ0 ; 
 int NAND_CMD_READSTART ; 
 int NAND_CMD_SEQIN ; 
 int NAND_ROW_ADDR_3 ; 
 scalar_t__ TAG_PTR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,void*,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct tegra_nand_controller*) ; 
 int /*<<< orphan*/  FUNC9 (struct tegra_nand_controller*) ; 
 int /*<<< orphan*/  FUNC10 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 struct tegra_nand_controller* FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC14(struct mtd_info *mtd, struct nand_chip *chip,
				void *buf, void *oob_buf, int oob_len, int page,
				bool read)
{
	struct tegra_nand_controller *ctrl = FUNC11(chip->controller);
	enum dma_data_direction dir = read ? DMA_FROM_DEVICE : DMA_TO_DEVICE;
	dma_addr_t dma_addr = 0, dma_addr_oob = 0;
	u32 addr1, cmd, dma_ctrl;
	int ret;

	FUNC10(chip, chip->cur_cs);

	if (read) {
		FUNC13(NAND_CMD_READ0, ctrl->regs + CMD_REG1);
		FUNC13(NAND_CMD_READSTART, ctrl->regs + CMD_REG2);
	} else {
		FUNC13(NAND_CMD_SEQIN, ctrl->regs + CMD_REG1);
		FUNC13(NAND_CMD_PAGEPROG, ctrl->regs + CMD_REG2);
	}
	cmd = COMMAND_CLE | COMMAND_SEC_CMD;

	/* Lower 16-bits are column, by default 0 */
	addr1 = page << 16;

	if (!buf)
		addr1 |= mtd->writesize;
	FUNC13(addr1, ctrl->regs + ADDR_REG1);

	if (chip->options & NAND_ROW_ADDR_3) {
		FUNC13(page >> 16, ctrl->regs + ADDR_REG2);
		cmd |= COMMAND_ALE | FUNC0(5);
	} else {
		cmd |= COMMAND_ALE | FUNC0(4);
	}

	if (buf) {
		dma_addr = FUNC4(ctrl->dev, buf, mtd->writesize, dir);
		ret = FUNC5(ctrl->dev, dma_addr);
		if (ret) {
			FUNC3(ctrl->dev, "dma mapping error\n");
			return -EINVAL;
		}

		FUNC13(mtd->writesize - 1, ctrl->regs + DMA_CFG_A);
		FUNC13(dma_addr, ctrl->regs + DATA_PTR);
	}

	if (oob_buf) {
		dma_addr_oob = FUNC4(ctrl->dev, oob_buf, mtd->oobsize,
					      dir);
		ret = FUNC5(ctrl->dev, dma_addr_oob);
		if (ret) {
			FUNC3(ctrl->dev, "dma mapping error\n");
			ret = -EINVAL;
			goto err_unmap_dma_page;
		}

		FUNC13(oob_len - 1, ctrl->regs + DMA_CFG_B);
		FUNC13(dma_addr_oob, ctrl->regs + TAG_PTR);
	}

	dma_ctrl = DMA_MST_CTRL_GO | DMA_MST_CTRL_PERF_EN |
		   DMA_MST_CTRL_IE_DONE | DMA_MST_CTRL_IS_DONE |
		   DMA_MST_CTRL_BURST_16;

	if (buf)
		dma_ctrl |= DMA_MST_CTRL_EN_A;
	if (oob_buf)
		dma_ctrl |= DMA_MST_CTRL_EN_B;

	if (read)
		dma_ctrl |= DMA_MST_CTRL_IN | DMA_MST_CTRL_REUSE;
	else
		dma_ctrl |= DMA_MST_CTRL_OUT;

	FUNC13(dma_ctrl, ctrl->regs + DMA_MST_CTRL);

	cmd |= COMMAND_GO | COMMAND_RBSY_CHK | FUNC2(9) |
	       FUNC1(ctrl->cur_cs);

	if (buf)
		cmd |= COMMAND_A_VALID;
	if (oob_buf)
		cmd |= COMMAND_B_VALID;

	if (read)
		cmd |= COMMAND_RX;
	else
		cmd |= COMMAND_TX | COMMAND_AFT_DAT;

	FUNC13(cmd, ctrl->regs + COMMAND);

	ret = FUNC12(&ctrl->command_complete,
					  FUNC7(500));
	if (!ret) {
		FUNC3(ctrl->dev, "COMMAND timeout\n");
		FUNC9(ctrl);
		FUNC8(ctrl);
		ret = -ETIMEDOUT;
		goto err_unmap_dma;
	}

	ret = FUNC12(&ctrl->dma_complete,
					  FUNC7(500));
	if (!ret) {
		FUNC3(ctrl->dev, "DMA timeout\n");
		FUNC9(ctrl);
		FUNC8(ctrl);
		ret = -ETIMEDOUT;
		goto err_unmap_dma;
	}
	ret = 0;

err_unmap_dma:
	if (oob_buf)
		FUNC6(ctrl->dev, dma_addr_oob, mtd->oobsize, dir);
err_unmap_dma_page:
	if (buf)
		FUNC6(ctrl->dev, dma_addr, mtd->writesize, dir);

	return ret;
}