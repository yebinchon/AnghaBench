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
struct mantis_pci {int risc_dma; scalar_t__ busy_block; scalar_t__ last_block; } ;

/* Variables and functions */
 int MANTIS_DCAP_EN ; 
 int /*<<< orphan*/  MANTIS_DEBUG ; 
 int /*<<< orphan*/  MANTIS_DMA_CTL ; 
 int MANTIS_FIFO_EN ; 
 int /*<<< orphan*/  MANTIS_GPIF_ADDR ; 
 int MANTIS_GPIF_HIFRDWRN ; 
 int /*<<< orphan*/  MANTIS_INT_RISCI ; 
 int MANTIS_RISC_EN ; 
 int /*<<< orphan*/  MANTIS_RISC_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mantis_pci*) ; 
 int /*<<< orphan*/  FUNC2 (struct mantis_pci*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

void FUNC5(struct mantis_pci *mantis)
{
	FUNC0(MANTIS_DEBUG, 1, "Mantis Start DMA engine");

	FUNC1(mantis);
	FUNC4(mantis->risc_dma, MANTIS_RISC_START);
	FUNC4(FUNC3(MANTIS_GPIF_ADDR) | MANTIS_GPIF_HIFRDWRN, MANTIS_GPIF_ADDR);

	FUNC4(0, MANTIS_DMA_CTL);
	mantis->last_block = mantis->busy_block = 0;

	FUNC2(mantis, MANTIS_INT_RISCI);

	FUNC4(MANTIS_FIFO_EN | MANTIS_DCAP_EN
			       | MANTIS_RISC_EN, MANTIS_DMA_CTL);

}