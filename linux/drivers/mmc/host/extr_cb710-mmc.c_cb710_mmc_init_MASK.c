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
struct platform_device {int dummy; } ;
struct mmc_host {int f_max; int f_min; int ocr_avail; int /*<<< orphan*/  caps; int /*<<< orphan*/ * ops; } ;
struct cb710_slot {int dummy; } ;
struct cb710_mmc_reader {int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  finish_req_tasklet; } ;
struct cb710_chip {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CB710_DUMP_REGS_MMC ; 
 size_t CB710_MAX_DIVIDER_IDX ; 
 int /*<<< orphan*/  CB710_MMC_IE_CARD_INSERTION_STATUS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MMC_CAP_4_BIT_DATA ; 
 int MMC_VDD_32_33 ; 
 int MMC_VDD_33_34 ; 
 int* cb710_clock_divider_log2 ; 
 int /*<<< orphan*/  FUNC0 (struct cb710_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cb710_slot*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cb710_mmc_finish_request_tasklet ; 
 int /*<<< orphan*/  cb710_mmc_host ; 
 int /*<<< orphan*/ * cb710_mmc_irq_handler ; 
 struct cb710_slot* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct cb710_slot*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cb710_slot*) ; 
 struct cb710_chip* FUNC5 (struct cb710_slot*) ; 
 int* cb710_src_freq_mhz ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC7 (struct mmc_host*) ; 
 struct mmc_host* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mmc_host*) ; 
 int FUNC10 (struct mmc_host*) ; 
 struct cb710_mmc_reader* FUNC11 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct cb710_slot *slot = FUNC2(pdev);
	struct cb710_chip *chip = FUNC5(slot);
	struct mmc_host *mmc;
	struct cb710_mmc_reader *reader;
	int err;
	u32 val;

	mmc = FUNC8(sizeof(*reader), FUNC4(slot));
	if (!mmc)
		return -ENOMEM;

	FUNC13(pdev, mmc);

	/* harmless (maybe) magic */
	FUNC12(chip->pdev, 0x48, &val);
	val = cb710_src_freq_mhz[(val >> 16) & 0xF];
	FUNC6(FUNC4(slot), "source frequency: %dMHz\n", val);
	val *= 1000000;

	mmc->ops = &cb710_mmc_host;
	mmc->f_max = val;
	mmc->f_min = val >> cb710_clock_divider_log2[CB710_MAX_DIVIDER_IDX];
	mmc->ocr_avail = MMC_VDD_32_33|MMC_VDD_33_34;
	mmc->caps = MMC_CAP_4_BIT_DATA;

	reader = FUNC11(mmc);

	FUNC15(&reader->finish_req_tasklet,
		cb710_mmc_finish_request_tasklet, (unsigned long)mmc);
	FUNC14(&reader->irq_lock);
	FUNC0(chip, CB710_DUMP_REGS_MMC);

	FUNC1(slot, 0, ~0);
	FUNC3(slot, cb710_mmc_irq_handler);

	err = FUNC7(mmc);
	if (FUNC16(err))
		goto err_free_mmc;

	FUNC6(FUNC4(slot), "mmc_hostname is %s\n",
		FUNC10(mmc));

	FUNC1(slot, CB710_MMC_IE_CARD_INSERTION_STATUS, 0);

	return 0;

err_free_mmc:
	FUNC6(FUNC4(slot), "mmc_add_host() failed: %d\n", err);

	FUNC3(slot, NULL);
	FUNC9(mmc);
	return err;
}