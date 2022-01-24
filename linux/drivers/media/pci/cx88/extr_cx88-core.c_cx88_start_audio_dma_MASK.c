#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cx88_core {int dummy; } ;
struct TYPE_3__ {int fifo_size; } ;

/* Variables and functions */
 int AUD_RDS_LINES ; 
 int /*<<< orphan*/  MO_AUDD_LNGTH ; 
 int /*<<< orphan*/  MO_AUDR_LNGTH ; 
 int /*<<< orphan*/  MO_AUD_DMACNTRL ; 
 size_t SRAM_CH25 ; 
 size_t SRAM_CH26 ; 
 size_t SRAM_CH27 ; 
 int /*<<< orphan*/  FUNC0 (struct cx88_core*,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* cx88_sram_channels ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

int FUNC3(struct cx88_core *core)
{
	/* constant 128 made buzz in analog Nicam-stereo for bigger fifo_size */
	int bpl = cx88_sram_channels[SRAM_CH25].fifo_size / 4;

	int rds_bpl = cx88_sram_channels[SRAM_CH27].fifo_size / AUD_RDS_LINES;

	/* If downstream RISC is enabled, bail out; ALSA is managing DMA */
	if (FUNC1(MO_AUD_DMACNTRL) & 0x10)
		return 0;

	/* setup fifo + format */
	FUNC0(core, &cx88_sram_channels[SRAM_CH25], bpl, 0);
	FUNC0(core, &cx88_sram_channels[SRAM_CH26], bpl, 0);
	FUNC0(core, &cx88_sram_channels[SRAM_CH27],
				rds_bpl, 0);

	FUNC2(MO_AUDD_LNGTH, bpl); /* fifo bpl size */
	FUNC2(MO_AUDR_LNGTH, rds_bpl); /* fifo bpl size */

	/* enable Up, Down and Audio RDS fifo */
	FUNC2(MO_AUD_DMACNTRL, 0x0007);

	return 0;
}