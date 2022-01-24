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
typedef  int u32 ;
struct spi_nor_hwcaps {int mask; } ;
struct TYPE_2__ {int mask; } ;
struct spi_nor_flash_parameter {TYPE_1__ hwcaps; } ;
struct spi_nor {int /*<<< orphan*/  dev; scalar_t__ spimem; struct spi_nor_flash_parameter params; } ;

/* Variables and functions */
 int SNOR_HWCAPS_X_X_X ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct spi_nor*) ; 
 int FUNC3 (struct spi_nor*,int) ; 
 int FUNC4 (struct spi_nor*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_nor*,int*) ; 

__attribute__((used)) static int FUNC6(struct spi_nor *nor,
				 const struct spi_nor_hwcaps *hwcaps)
{
	struct spi_nor_flash_parameter *params = &nor->params;
	u32 ignored_mask, shared_mask;
	int err;

	/*
	 * Keep only the hardware capabilities supported by both the SPI
	 * controller and the SPI flash memory.
	 */
	shared_mask = hwcaps->mask & params->hwcaps.mask;

	if (nor->spimem) {
		/*
		 * When called from spi_nor_probe(), all caps are set and we
		 * need to discard some of them based on what the SPI
		 * controller actually supports (using spi_mem_supports_op()).
		 */
		FUNC5(nor, &shared_mask);
	} else {
		/*
		 * SPI n-n-n protocols are not supported when the SPI
		 * controller directly implements the spi_nor interface.
		 * Yet another reason to switch to spi-mem.
		 */
		ignored_mask = SNOR_HWCAPS_X_X_X;
		if (shared_mask & ignored_mask) {
			FUNC0(nor->dev,
				"SPI n-n-n protocols are not supported.\n");
			shared_mask &= ~ignored_mask;
		}
	}

	/* Select the (Fast) Read command. */
	err = FUNC4(nor, shared_mask);
	if (err) {
		FUNC1(nor->dev,
			"can't select read settings supported by both the SPI controller and memory.\n");
		return err;
	}

	/* Select the Page Program command. */
	err = FUNC3(nor, shared_mask);
	if (err) {
		FUNC1(nor->dev,
			"can't select write settings supported by both the SPI controller and memory.\n");
		return err;
	}

	/* Select the Sector Erase command. */
	err = FUNC2(nor);
	if (err) {
		FUNC1(nor->dev,
			"can't select erase settings supported by both the SPI controller and memory.\n");
		return err;
	}

	return 0;
}