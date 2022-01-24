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
struct tifm_sd {int /*<<< orphan*/  timer; int /*<<< orphan*/  finish_tasklet; int /*<<< orphan*/  timeout_jiffies; struct tifm_dev* dev; } ;
struct tifm_dev {int /*<<< orphan*/  data_event; int /*<<< orphan*/  card_event; int /*<<< orphan*/  dev; scalar_t__ addr; } ;
struct mmc_host {int ocr_avail; int f_min; int f_max; int max_blk_count; int max_segs; int max_blk_size; int max_seg_size; int max_req_size; int /*<<< orphan*/  caps; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MMC_CAP_4_BIT_DATA ; 
 int MMC_VDD_32_33 ; 
 int MMC_VDD_33_34 ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ SOCK_PRESENT_STATE ; 
 int /*<<< orphan*/  TIFM_MMCSD_MAX_BLOCK_SIZE ; 
 int TIFM_SOCK_STATE_OCCUPIED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mmc_host*) ; 
 struct mmc_host* FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 struct tifm_sd* FUNC5 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  tifm_sd_abort ; 
 int /*<<< orphan*/  tifm_sd_card_event ; 
 int /*<<< orphan*/  tifm_sd_data_event ; 
 int /*<<< orphan*/  tifm_sd_end_cmd ; 
 int FUNC10 (struct tifm_sd*) ; 
 int /*<<< orphan*/  tifm_sd_ops ; 
 int /*<<< orphan*/  FUNC11 (struct tifm_dev*,struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct tifm_dev *sock)
{
	struct mmc_host *mmc;
	struct tifm_sd *host;
	int rc = -EIO;

	if (!(TIFM_SOCK_STATE_OCCUPIED
	      & FUNC8(sock->addr + SOCK_PRESENT_STATE))) {
		FUNC7("%s : card gone, unexpectedly\n",
			FUNC0(&sock->dev));
		return rc;
	}

	mmc = FUNC3(sizeof(struct tifm_sd), &sock->dev);
	if (!mmc)
		return -ENOMEM;

	host = FUNC5(mmc);
	FUNC11(sock, mmc);
	host->dev = sock;
	host->timeout_jiffies = FUNC6(1000);

	FUNC9(&host->finish_tasklet, tifm_sd_end_cmd,
		     (unsigned long)host);
	FUNC12(&host->timer, tifm_sd_abort, 0);

	mmc->ops = &tifm_sd_ops;
	mmc->ocr_avail = MMC_VDD_32_33 | MMC_VDD_33_34;
	mmc->caps = MMC_CAP_4_BIT_DATA;
	mmc->f_min = 20000000 / 60;
	mmc->f_max = 24000000;

	mmc->max_blk_count = 2048;
	mmc->max_segs = mmc->max_blk_count;
	mmc->max_blk_size = FUNC1(TIFM_MMCSD_MAX_BLOCK_SIZE, PAGE_SIZE);
	mmc->max_seg_size = mmc->max_blk_count * mmc->max_blk_size;
	mmc->max_req_size = mmc->max_seg_size;

	sock->card_event = tifm_sd_card_event;
	sock->data_event = tifm_sd_data_event;
	rc = FUNC10(host);

	if (!rc)
		rc = FUNC2(mmc);
	if (!rc)
		return 0;

	FUNC4(mmc);
	return rc;
}