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
struct cqspi_st {int fifo_depth; int trigger_address; int fifo_width; scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ CQSPI_REG_CONFIG ; 
 int CQSPI_REG_CONFIG_ENB_DIR_ACC_CTRL ; 
 scalar_t__ CQSPI_REG_INDIRECTRDWATERMARK ; 
 scalar_t__ CQSPI_REG_INDIRECTTRIGGER ; 
 scalar_t__ CQSPI_REG_INDIRECTWRWATERMARK ; 
 scalar_t__ CQSPI_REG_IRQMASK ; 
 scalar_t__ CQSPI_REG_REMAP ; 
 scalar_t__ CQSPI_REG_SRAMPARTITION ; 
 int /*<<< orphan*/  FUNC0 (struct cqspi_st*,int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct cqspi_st *cqspi)
{
	u32 reg;

	FUNC0(cqspi, 0);

	/* Configure the remap address register, no remap */
	FUNC2(0, cqspi->iobase + CQSPI_REG_REMAP);

	/* Disable all interrupts. */
	FUNC2(0, cqspi->iobase + CQSPI_REG_IRQMASK);

	/* Configure the SRAM split to 1:1 . */
	FUNC2(cqspi->fifo_depth / 2, cqspi->iobase + CQSPI_REG_SRAMPARTITION);

	/* Load indirect trigger address. */
	FUNC2(cqspi->trigger_address,
	       cqspi->iobase + CQSPI_REG_INDIRECTTRIGGER);

	/* Program read watermark -- 1/2 of the FIFO. */
	FUNC2(cqspi->fifo_depth * cqspi->fifo_width / 2,
	       cqspi->iobase + CQSPI_REG_INDIRECTRDWATERMARK);
	/* Program write watermark -- 1/8 of the FIFO. */
	FUNC2(cqspi->fifo_depth * cqspi->fifo_width / 8,
	       cqspi->iobase + CQSPI_REG_INDIRECTWRWATERMARK);

	/* Enable Direct Access Controller */
	reg = FUNC1(cqspi->iobase + CQSPI_REG_CONFIG);
	reg |= CQSPI_REG_CONFIG_ENB_DIR_ACC_CTRL;
	FUNC2(reg, cqspi->iobase + CQSPI_REG_CONFIG);

	FUNC0(cqspi, 1);
}