#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int power_delay_ms; } ;
struct TYPE_7__ {int /*<<< orphan*/ * class; struct device* parent; } ;
struct mmc_host {int rescan_disable; int index; int max_segs; int max_seg_size; int max_req_size; int max_blk_size; int max_blk_count; TYPE_1__ ios; int /*<<< orphan*/  fixed_drv_type; int /*<<< orphan*/  retune_timer; int /*<<< orphan*/  sdio_irq_work; int /*<<< orphan*/  detect; int /*<<< orphan*/  wq; int /*<<< orphan*/  lock; TYPE_2__ class_dev; struct device* parent; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_host*) ; 
 struct mmc_host* FUNC7 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct mmc_host*) ; 
 int /*<<< orphan*/  mmc_host_class ; 
 int /*<<< orphan*/  mmc_host_ida ; 
 int /*<<< orphan*/  mmc_rescan ; 
 int /*<<< orphan*/  mmc_retune_timer ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  sdio_irq_work ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct mmc_host *FUNC12(int extra, struct device *dev)
{
	int err;
	struct mmc_host *host;

	host = FUNC7(sizeof(struct mmc_host) + extra, GFP_KERNEL);
	if (!host)
		return NULL;

	/* scanning will be enabled when we're ready */
	host->rescan_disable = 1;

	err = FUNC4(&mmc_host_ida, 0, 0, GFP_KERNEL);
	if (err < 0) {
		FUNC6(host);
		return NULL;
	}

	host->index = err;

	FUNC1(&host->class_dev, "mmc%d", host->index);

	host->parent = dev;
	host->class_dev.parent = dev;
	host->class_dev.class = &mmc_host_class;
	FUNC3(&host->class_dev);
	FUNC2(&host->class_dev);

	if (FUNC8(host)) {
		FUNC9(&host->class_dev);
		return NULL;
	}

	FUNC10(&host->lock);
	FUNC5(&host->wq);
	FUNC0(&host->detect, mmc_rescan);
	FUNC0(&host->sdio_irq_work, sdio_irq_work);
	FUNC11(&host->retune_timer, mmc_retune_timer, 0);

	/*
	 * By default, hosts do not support SGIO or large requests.
	 * They have to set these according to their abilities.
	 */
	host->max_segs = 1;
	host->max_seg_size = PAGE_SIZE;

	host->max_req_size = PAGE_SIZE;
	host->max_blk_size = 512;
	host->max_blk_count = PAGE_SIZE / 512;

	host->fixed_drv_type = -EINVAL;
	host->ios.power_delay_ms = 10;

	return host;
}