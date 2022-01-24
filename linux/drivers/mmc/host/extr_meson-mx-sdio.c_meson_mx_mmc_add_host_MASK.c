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
struct mmc_host {int max_blk_size; int caps; int /*<<< orphan*/ * ops; void* f_max; void* f_min; void* max_blk_count; int /*<<< orphan*/  max_req_size; int /*<<< orphan*/  max_seg_size; } ;
struct meson_mx_mmc_host {int /*<<< orphan*/  parent_clk; int /*<<< orphan*/  cfg_div_clk; int /*<<< orphan*/  slot_id; struct mmc_host* mmc; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int BITS_PER_BYTE ; 
 int EINVAL ; 
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MESON_MX_SDIO_BOUNCE_REQ_SIZE ; 
 int /*<<< orphan*/  MESON_MX_SDIO_EXT_DATA_RW_NUMBER_MASK ; 
 int /*<<< orphan*/  MESON_MX_SDIO_MAX_SLOTS ; 
 int MESON_MX_SDIO_RESPONSE_CRC16_BITS ; 
 int /*<<< orphan*/  MESON_MX_SDIO_SEND_REPEAT_PACKAGE_TIMES_MASK ; 
 int MMC_CAP_CMD23 ; 
 int MMC_CAP_ERASE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  meson_mx_mmc_ops ; 
 int FUNC4 (struct mmc_host*) ; 
 struct device* FUNC5 (struct mmc_host*) ; 
 int FUNC6 (struct mmc_host*) ; 
 int FUNC7 (struct mmc_host*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct meson_mx_mmc_host *host)
{
	struct mmc_host *mmc = host->mmc;
	struct device *slot_dev = FUNC5(mmc);
	int ret;

	if (FUNC8(slot_dev->of_node, "reg", &host->slot_id)) {
		FUNC3(slot_dev, "missing 'reg' property\n");
		return -EINVAL;
	}

	if (host->slot_id >= MESON_MX_SDIO_MAX_SLOTS) {
		FUNC3(slot_dev, "invalid 'reg' property value %d\n",
			host->slot_id);
		return -EINVAL;
	}

	/* Get regulators and the supported OCR mask */
	ret = FUNC7(mmc);
	if (ret)
		return ret;

	mmc->max_req_size = MESON_MX_SDIO_BOUNCE_REQ_SIZE;
	mmc->max_seg_size = mmc->max_req_size;
	mmc->max_blk_count =
		FUNC0(MESON_MX_SDIO_SEND_REPEAT_PACKAGE_TIMES_MASK,
			  0xffffffff);
	mmc->max_blk_size = FUNC0(MESON_MX_SDIO_EXT_DATA_RW_NUMBER_MASK,
				      0xffffffff);
	mmc->max_blk_size -= (4 * MESON_MX_SDIO_RESPONSE_CRC16_BITS);
	mmc->max_blk_size /= BITS_PER_BYTE;

	/* Get the min and max supported clock rates */
	mmc->f_min = FUNC2(host->cfg_div_clk, 1);
	mmc->f_max = FUNC2(host->cfg_div_clk,
				    FUNC1(host->parent_clk));

	mmc->caps |= MMC_CAP_ERASE | MMC_CAP_CMD23;
	mmc->ops = &meson_mx_mmc_ops;

	ret = FUNC6(mmc);
	if (ret)
		return ret;

	ret = FUNC4(mmc);
	if (ret)
		return ret;

	return 0;
}