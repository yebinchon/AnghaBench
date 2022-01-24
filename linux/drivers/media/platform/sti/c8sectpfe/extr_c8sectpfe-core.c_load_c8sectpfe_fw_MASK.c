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
struct firmware {int dummy; } ;
struct c8sectpfei {int /*<<< orphan*/  fw_loaded; scalar_t__ io; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ DMA_CPU_RUN ; 
 scalar_t__ DMA_PER_STBUS_SYNC ; 
 int /*<<< orphan*/  FIRMWARE_MEMDMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct c8sectpfei*,struct firmware const*) ; 
 int FUNC2 (struct c8sectpfei*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (struct firmware const*,struct c8sectpfei*) ; 
 int /*<<< orphan*/  FUNC6 (struct firmware const*) ; 
 int FUNC7 (struct firmware const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct c8sectpfei *fei)
{
	const struct firmware *fw;
	int err;

	FUNC4(fei->dev, "Loading firmware: %s\n", FIRMWARE_MEMDMA);

	err = FUNC7(&fw, FIRMWARE_MEMDMA, fei->dev);
	if (err)
		return err;

	err = FUNC1(fei, fw);
	if (err) {
		FUNC3(fei->dev, "c8sectpfe_elf_sanity_check failed err=(%d)\n"
			, err);
		FUNC6(fw);
		return err;
	}

	err = FUNC5(fw, fei);
	if (err) {
		FUNC3(fei->dev, "load_slim_core_fw failed err=(%d)\n", err);
		return err;
	}

	/* now the firmware is loaded configure the input blocks */
	err = FUNC2(fei);
	if (err) {
		FUNC3(fei->dev, "configure_channels failed err=(%d)\n", err);
		return err;
	}

	/*
	 * STBus target port can access IMEM and DMEM ports
	 * without waiting for CPU
	 */
	FUNC8(0x1, fei->io + DMA_PER_STBUS_SYNC);

	FUNC4(fei->dev, "Boot the memdma SLIM core\n");
	FUNC8(0x1,  fei->io + DMA_CPU_RUN);

	FUNC0(&fei->fw_loaded, 1);

	return 0;
}