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
struct cx88_core {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MO_AGC_BACK_VBI ; 
 int /*<<< orphan*/  MO_AGC_SYNC_TIP1 ; 
 int /*<<< orphan*/  MO_COLOR_CTRL ; 
 int /*<<< orphan*/  MO_INPUT_FORMAT ; 
 int /*<<< orphan*/  MO_INT1_STAT ; 
 int /*<<< orphan*/  MO_PCI_INTSTAT ; 
 int /*<<< orphan*/  MO_PDMA_DTHRSH ; 
 int /*<<< orphan*/  MO_PDMA_STHRSH ; 
 int /*<<< orphan*/  MO_SRST_IO ; 
 int /*<<< orphan*/  MO_VID_INTSTAT ; 
 size_t SRAM_CH21 ; 
 size_t SRAM_CH22 ; 
 size_t SRAM_CH23 ; 
 size_t SRAM_CH24 ; 
 size_t SRAM_CH25 ; 
 size_t SRAM_CH26 ; 
 size_t SRAM_CH27 ; 
 size_t SRAM_CH28 ; 
 int /*<<< orphan*/  FUNC0 (struct cx88_core*) ; 
 int /*<<< orphan*/  FUNC1 (struct cx88_core*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * cx88_sram_channels ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

int FUNC7(struct cx88_core *core)
{
	FUNC4(1, "");
	FUNC0(core);

	/* clear irq status */
	FUNC3(MO_VID_INTSTAT, 0xFFFFFFFF); // Clear PIV int
	FUNC3(MO_PCI_INTSTAT, 0xFFFFFFFF); // Clear PCI int
	FUNC3(MO_INT1_STAT,   0xFFFFFFFF); // Clear RISC int

	/* wait a bit */
	FUNC5(100);

	/* init sram */
	FUNC1(core, &cx88_sram_channels[SRAM_CH21],
				720 * 4, 0);
	FUNC1(core, &cx88_sram_channels[SRAM_CH22], 128, 0);
	FUNC1(core, &cx88_sram_channels[SRAM_CH23], 128, 0);
	FUNC1(core, &cx88_sram_channels[SRAM_CH24], 128, 0);
	FUNC1(core, &cx88_sram_channels[SRAM_CH25], 128, 0);
	FUNC1(core, &cx88_sram_channels[SRAM_CH26], 128, 0);
	FUNC1(core, &cx88_sram_channels[SRAM_CH28],
				188 * 4, 0);
	FUNC1(core, &cx88_sram_channels[SRAM_CH27], 128, 0);

	/* misc init ... */
	FUNC3(MO_INPUT_FORMAT, ((1 << 13) |   // agc enable
				   (1 << 12) |   // agc gain
				   (1 << 11) |   // adaptibe agc
				   (0 << 10) |   // chroma agc
				   (0 <<  9) |   // ckillen
				   (7)));

	/* setup image format */
	FUNC2(MO_COLOR_CTRL, 0x4000, 0x4000);

	/* setup FIFO Thresholds */
	FUNC3(MO_PDMA_STHRSH,   0x0807);
	FUNC3(MO_PDMA_DTHRSH,   0x0807);

	/* fixes flashing of image */
	FUNC3(MO_AGC_SYNC_TIP1, 0x0380000F);
	FUNC3(MO_AGC_BACK_VBI,  0x00E00555);

	FUNC3(MO_VID_INTSTAT,   0xFFFFFFFF); // Clear PIV int
	FUNC3(MO_PCI_INTSTAT,   0xFFFFFFFF); // Clear PCI int
	FUNC3(MO_INT1_STAT,     0xFFFFFFFF); // Clear RISC int

	/* Reset on-board parts */
	FUNC3(MO_SRST_IO, 0);
	FUNC6(10000, 20000);
	FUNC3(MO_SRST_IO, 1);

	return 0;
}