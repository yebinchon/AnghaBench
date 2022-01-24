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
struct mantis_pci {int dummy; } ;

/* Variables and functions */
 int MANTIS_DCAP_EN ; 
 int /*<<< orphan*/  MANTIS_DEBUG ; 
 int /*<<< orphan*/  MANTIS_DMA_CTL ; 
 int MANTIS_FIFO_EN ; 
 int /*<<< orphan*/  MANTIS_GPIF_ADDR ; 
 int MANTIS_GPIF_HIFRDWRN ; 
 int MANTIS_INT_RISCEN ; 
 int MANTIS_INT_RISCI ; 
 int /*<<< orphan*/  MANTIS_INT_STAT ; 
 int MANTIS_RISC_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mantis_pci*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

void FUNC4(struct mantis_pci *mantis)
{
	FUNC0(MANTIS_DEBUG, 1, "Mantis Stop DMA engine");

	FUNC3((FUNC2(MANTIS_GPIF_ADDR) & (~(MANTIS_GPIF_HIFRDWRN))), MANTIS_GPIF_ADDR);

	FUNC3((FUNC2(MANTIS_DMA_CTL) & ~(MANTIS_FIFO_EN |
					    MANTIS_DCAP_EN |
					    MANTIS_RISC_EN)), MANTIS_DMA_CTL);

	FUNC3(FUNC2(MANTIS_INT_STAT), MANTIS_INT_STAT);

	FUNC1(mantis, MANTIS_INT_RISCI | MANTIS_INT_RISCEN);
}