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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct asic3 {scalar_t__ bus_shift; int /*<<< orphan*/  tmio_cnf; int /*<<< orphan*/ * clocks; } ;

/* Variables and functions */
 size_t ASIC3_CLOCK_EX0 ; 
 size_t ASIC3_CLOCK_EX1 ; 
 size_t ASIC3_CLOCK_SD_BUS ; 
 size_t ASIC3_CLOCK_SD_HOST ; 
 int /*<<< orphan*/  ASIC3_EXTCF_SD_MEM_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ASIC3_SDHWCTRL_LEVCD ; 
 int /*<<< orphan*/  ASIC3_SDHWCTRL_LEVWP ; 
 int /*<<< orphan*/  ASIC3_SDHWCTRL_PCLR ; 
 int /*<<< orphan*/  ASIC3_SDHWCTRL_SDPWR ; 
 int /*<<< orphan*/  ASIC3_SDHWCTRL_SUSPEND ; 
 int ASIC3_SD_CTRL_BASE ; 
 int /*<<< orphan*/  CLOCK ; 
 int CLOCK_SEL_CX ; 
 int CLOCK_SEL_SD_HCLK_SEL ; 
 int /*<<< orphan*/  EXTCF ; 
 int /*<<< orphan*/  SDCONF ; 
 int /*<<< orphan*/  SDHWCTRL ; 
 int /*<<< orphan*/  SEL ; 
 int /*<<< orphan*/  SELECT ; 
 int /*<<< orphan*/  FUNC1 (struct asic3*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct asic3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct asic3*,int /*<<< orphan*/ ,int) ; 
 struct asic3* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct asic3 *asic = FUNC4(pdev->dev.parent);

	/* Not sure if it must be done bit by bit, but leaving as-is */
	FUNC2(asic, FUNC0(SDHWCTRL, SDCONF),
			   ASIC3_SDHWCTRL_LEVCD, 1);
	FUNC2(asic, FUNC0(SDHWCTRL, SDCONF),
			   ASIC3_SDHWCTRL_LEVWP, 1);
	FUNC2(asic, FUNC0(SDHWCTRL, SDCONF),
			   ASIC3_SDHWCTRL_SUSPEND, 0);
	FUNC2(asic, FUNC0(SDHWCTRL, SDCONF),
			   ASIC3_SDHWCTRL_PCLR, 0);

	FUNC1(asic, &asic->clocks[ASIC3_CLOCK_EX0]);
	/* CLK32 used for card detection and for interruption detection
	 * when HCLK is stopped.
	 */
	FUNC1(asic, &asic->clocks[ASIC3_CLOCK_EX1]);
	FUNC6(1000, 5000);

	/* HCLK 24.576 MHz, BCLK 12.288 MHz: */
	FUNC3(asic, FUNC0(CLOCK, SEL),
		CLOCK_SEL_CX | CLOCK_SEL_SD_HCLK_SEL);

	FUNC1(asic, &asic->clocks[ASIC3_CLOCK_SD_HOST]);
	FUNC1(asic, &asic->clocks[ASIC3_CLOCK_SD_BUS]);
	FUNC6(1000, 5000);

	FUNC2(asic, FUNC0(EXTCF, SELECT),
			   ASIC3_EXTCF_SD_MEM_ENABLE, 1);

	/* Enable SD card slot 3.3V power supply */
	FUNC2(asic, FUNC0(SDHWCTRL, SDCONF),
			   ASIC3_SDHWCTRL_SDPWR, 1);

	/* ASIC3_SD_CTRL_BASE assumes 32-bit addressing, TMIO is 16-bit */
	FUNC5(asic->tmio_cnf, 1 - asic->bus_shift,
			     ASIC3_SD_CTRL_BASE >> 1);

	return 0;
}