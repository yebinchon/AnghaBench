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
struct stm32_fmc2_nand {int /*<<< orphan*/  chip; } ;
struct stm32_fmc2_nfc {int /*<<< orphan*/  clk; int /*<<< orphan*/  dma_ecc_sg; int /*<<< orphan*/  dma_data_sg; scalar_t__ dma_rx_ch; scalar_t__ dma_tx_ch; scalar_t__ dma_ecc_ch; struct stm32_fmc2_nand nand; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct stm32_fmc2_nfc* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct stm32_fmc2_nfc *fmc2 = FUNC3(pdev);
	struct stm32_fmc2_nand *nand = &fmc2->nand;

	FUNC2(&nand->chip);

	if (fmc2->dma_ecc_ch)
		FUNC1(fmc2->dma_ecc_ch);
	if (fmc2->dma_tx_ch)
		FUNC1(fmc2->dma_tx_ch);
	if (fmc2->dma_rx_ch)
		FUNC1(fmc2->dma_rx_ch);

	FUNC4(&fmc2->dma_data_sg);
	FUNC4(&fmc2->dma_ecc_sg);

	FUNC0(fmc2->clk);

	return 0;
}