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
struct rtsx_pcr {int dummy; } ;
struct realtek_pci_sdmmc {struct rtsx_pcr* pcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_CLK_SOURCE ; 
 int /*<<< orphan*/  CLK_CTL ; 
 int CLK_LOW_FREQ ; 
 int CRC_FIX_CLK ; 
 int CRC_VAR_CLK0 ; 
 int DDR_VAR_RX_CMD ; 
 int DDR_VAR_RX_DAT ; 
 int DDR_VAR_TX_CMD_DAT ; 
#define  MMC_TIMING_MMC_DDR52 133 
#define  MMC_TIMING_MMC_HS 132 
#define  MMC_TIMING_SD_HS 131 
#define  MMC_TIMING_UHS_DDR50 130 
#define  MMC_TIMING_UHS_SDR104 129 
#define  MMC_TIMING_UHS_SDR50 128 
 int SAMPLE_VAR_CLK1 ; 
 int SD20_RX_14_DELAY ; 
 int SD20_RX_POS_EDGE ; 
 int SD20_RX_SEL_MASK ; 
 int SD20_TX_14_AHEAD ; 
 int SD20_TX_SEL_MASK ; 
 int SD30_FIX_CLK ; 
 int SD30_VAR_CLK0 ; 
 int SD_20_MODE ; 
 int SD_30_MODE ; 
 int SD_ASYNC_FIFO_NOT_RST ; 
 int /*<<< orphan*/  SD_CFG1 ; 
 int SD_DDR_MODE ; 
 int /*<<< orphan*/  SD_PUSH_POINT_CTL ; 
 int /*<<< orphan*/  SD_SAMPLE_POINT_CTL ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_pcr*) ; 
 int FUNC2 (struct rtsx_pcr*,int) ; 

__attribute__((used)) static int FUNC3(struct realtek_pci_sdmmc *host, unsigned char timing)
{
	struct rtsx_pcr *pcr = host->pcr;
	int err = 0;

	FUNC1(pcr);

	switch (timing) {
	case MMC_TIMING_UHS_SDR104:
	case MMC_TIMING_UHS_SDR50:
		FUNC0(pcr, WRITE_REG_CMD, SD_CFG1,
				0x0C | SD_ASYNC_FIFO_NOT_RST,
				SD_30_MODE | SD_ASYNC_FIFO_NOT_RST);
		FUNC0(pcr, WRITE_REG_CMD, CLK_CTL,
				CLK_LOW_FREQ, CLK_LOW_FREQ);
		FUNC0(pcr, WRITE_REG_CMD, CARD_CLK_SOURCE, 0xFF,
				CRC_VAR_CLK0 | SD30_FIX_CLK | SAMPLE_VAR_CLK1);
		FUNC0(pcr, WRITE_REG_CMD, CLK_CTL, CLK_LOW_FREQ, 0);
		break;

	case MMC_TIMING_MMC_DDR52:
	case MMC_TIMING_UHS_DDR50:
		FUNC0(pcr, WRITE_REG_CMD, SD_CFG1,
				0x0C | SD_ASYNC_FIFO_NOT_RST,
				SD_DDR_MODE | SD_ASYNC_FIFO_NOT_RST);
		FUNC0(pcr, WRITE_REG_CMD, CLK_CTL,
				CLK_LOW_FREQ, CLK_LOW_FREQ);
		FUNC0(pcr, WRITE_REG_CMD, CARD_CLK_SOURCE, 0xFF,
				CRC_VAR_CLK0 | SD30_FIX_CLK | SAMPLE_VAR_CLK1);
		FUNC0(pcr, WRITE_REG_CMD, CLK_CTL, CLK_LOW_FREQ, 0);
		FUNC0(pcr, WRITE_REG_CMD, SD_PUSH_POINT_CTL,
				DDR_VAR_TX_CMD_DAT, DDR_VAR_TX_CMD_DAT);
		FUNC0(pcr, WRITE_REG_CMD, SD_SAMPLE_POINT_CTL,
				DDR_VAR_RX_DAT | DDR_VAR_RX_CMD,
				DDR_VAR_RX_DAT | DDR_VAR_RX_CMD);
		break;

	case MMC_TIMING_MMC_HS:
	case MMC_TIMING_SD_HS:
		FUNC0(pcr, WRITE_REG_CMD, SD_CFG1,
				0x0C, SD_20_MODE);
		FUNC0(pcr, WRITE_REG_CMD, CLK_CTL,
				CLK_LOW_FREQ, CLK_LOW_FREQ);
		FUNC0(pcr, WRITE_REG_CMD, CARD_CLK_SOURCE, 0xFF,
				CRC_FIX_CLK | SD30_VAR_CLK0 | SAMPLE_VAR_CLK1);
		FUNC0(pcr, WRITE_REG_CMD, CLK_CTL, CLK_LOW_FREQ, 0);
		FUNC0(pcr, WRITE_REG_CMD, SD_PUSH_POINT_CTL,
				SD20_TX_SEL_MASK, SD20_TX_14_AHEAD);
		FUNC0(pcr, WRITE_REG_CMD, SD_SAMPLE_POINT_CTL,
				SD20_RX_SEL_MASK, SD20_RX_14_DELAY);
		break;

	default:
		FUNC0(pcr, WRITE_REG_CMD,
				SD_CFG1, 0x0C, SD_20_MODE);
		FUNC0(pcr, WRITE_REG_CMD, CLK_CTL,
				CLK_LOW_FREQ, CLK_LOW_FREQ);
		FUNC0(pcr, WRITE_REG_CMD, CARD_CLK_SOURCE, 0xFF,
				CRC_FIX_CLK | SD30_VAR_CLK0 | SAMPLE_VAR_CLK1);
		FUNC0(pcr, WRITE_REG_CMD, CLK_CTL, CLK_LOW_FREQ, 0);
		FUNC0(pcr, WRITE_REG_CMD,
				SD_PUSH_POINT_CTL, 0xFF, 0);
		FUNC0(pcr, WRITE_REG_CMD, SD_SAMPLE_POINT_CTL,
				SD20_RX_SEL_MASK, SD20_RX_POS_EDGE);
		break;
	}

	err = FUNC2(pcr, 100);

	return err;
}