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
typedef  int uint32_t ;
struct mmc_command {int flags; int arg; int /*<<< orphan*/  opcode; TYPE_1__* data; } ;
struct jz4740_mmc_host {int cmdat; scalar_t__ version; scalar_t__ base; scalar_t__ use_dma; struct mmc_command* cmd; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  blocks; int /*<<< orphan*/  blksz; } ;

/* Variables and functions */
 int JZ_MMC_CMDAT_BUSY ; 
 int JZ_MMC_CMDAT_DATA_EN ; 
 int JZ_MMC_CMDAT_DMA_EN ; 
 int JZ_MMC_CMDAT_INIT ; 
 int JZ_MMC_CMDAT_RSP_R1 ; 
 int JZ_MMC_CMDAT_RSP_R2 ; 
 int JZ_MMC_CMDAT_RSP_R3 ; 
 int JZ_MMC_CMDAT_WRITE ; 
 int JZ_MMC_DMAC_DMA_EN ; 
 int JZ_MMC_DMAC_DMA_SEL ; 
 scalar_t__ JZ_MMC_JZ4780 ; 
 scalar_t__ JZ_REG_MMC_ARG ; 
 scalar_t__ JZ_REG_MMC_BLKLEN ; 
 scalar_t__ JZ_REG_MMC_CMD ; 
 scalar_t__ JZ_REG_MMC_CMDAT ; 
 scalar_t__ JZ_REG_MMC_DMAC ; 
 scalar_t__ JZ_REG_MMC_NOB ; 
 int MMC_DATA_WRITE ; 
 int MMC_RSP_BUSY ; 
#define  MMC_RSP_R1 131 
#define  MMC_RSP_R1B 130 
#define  MMC_RSP_R2 129 
#define  MMC_RSP_R3 128 
 int /*<<< orphan*/  FUNC0 (struct jz4740_mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct jz4740_mmc_host*,int) ; 
 int FUNC2 (struct mmc_command*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct jz4740_mmc_host *host,
	struct mmc_command *cmd)
{
	uint32_t cmdat = host->cmdat;

	host->cmdat &= ~JZ_MMC_CMDAT_INIT;
	FUNC0(host);

	host->cmd = cmd;

	if (cmd->flags & MMC_RSP_BUSY)
		cmdat |= JZ_MMC_CMDAT_BUSY;

	switch (FUNC2(cmd)) {
	case MMC_RSP_R1B:
	case MMC_RSP_R1:
		cmdat |= JZ_MMC_CMDAT_RSP_R1;
		break;
	case MMC_RSP_R2:
		cmdat |= JZ_MMC_CMDAT_RSP_R2;
		break;
	case MMC_RSP_R3:
		cmdat |= JZ_MMC_CMDAT_RSP_R3;
		break;
	default:
		break;
	}

	if (cmd->data) {
		cmdat |= JZ_MMC_CMDAT_DATA_EN;
		if (cmd->data->flags & MMC_DATA_WRITE)
			cmdat |= JZ_MMC_CMDAT_WRITE;
		if (host->use_dma) {
			/*
			 * The 4780's MMC controller has integrated DMA ability
			 * in addition to being able to use the external DMA
			 * controller. It moves DMA control bits to a separate
			 * register. The DMA_SEL bit chooses the external
			 * controller over the integrated one. Earlier SoCs
			 * can only use the external controller, and have a
			 * single DMA enable bit in CMDAT.
			 */
			if (host->version >= JZ_MMC_JZ4780) {
				FUNC4(JZ_MMC_DMAC_DMA_EN | JZ_MMC_DMAC_DMA_SEL,
				       host->base + JZ_REG_MMC_DMAC);
			} else {
				cmdat |= JZ_MMC_CMDAT_DMA_EN;
			}
		} else if (host->version >= JZ_MMC_JZ4780) {
			FUNC4(0, host->base + JZ_REG_MMC_DMAC);
		}

		FUNC5(cmd->data->blksz, host->base + JZ_REG_MMC_BLKLEN);
		FUNC5(cmd->data->blocks, host->base + JZ_REG_MMC_NOB);
	}

	FUNC3(cmd->opcode, host->base + JZ_REG_MMC_CMD);
	FUNC4(cmd->arg, host->base + JZ_REG_MMC_ARG);
	FUNC4(cmdat, host->base + JZ_REG_MMC_CMDAT);

	FUNC1(host, 1);
}