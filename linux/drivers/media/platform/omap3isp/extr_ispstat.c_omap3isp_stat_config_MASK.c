#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ispstat_generic_config {int buf_size; scalar_t__ config_counter; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct ispstat {int configured; int /*<<< orphan*/  ioctl_lock; TYPE_3__ subdev; TYPE_2__* isp; scalar_t__ inc_config; scalar_t__ config_counter; TYPE_1__* ops; struct ispstat_generic_config* recover_priv; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  stat_lock; } ;
struct TYPE_4__ {int (* validate_params ) (struct ispstat*,void*) ;int /*<<< orphan*/  (* set_params ) (struct ispstat*,void*) ;} ;

/* Variables and functions */
 int AF_EXTRA_DATA ; 
 scalar_t__ FUNC0 (struct ispstat*) ; 
 scalar_t__ FUNC1 (struct ispstat*) ; 
 int MAGIC_SIZE ; 
 int NUM_H3A_RECOVER_BUFS ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC4 (struct ispstat*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC9 (struct ispstat*,void*) ; 
 int /*<<< orphan*/  FUNC10 (struct ispstat*,void*) ; 

int FUNC11(struct ispstat *stat, void *new_conf)
{
	int ret;
	unsigned long irqflags;
	struct ispstat_generic_config *user_cfg = new_conf;
	u32 buf_size = user_cfg->buf_size;

	FUNC5(&stat->ioctl_lock);

	FUNC3(stat->isp->dev,
		"%s: configuring module with buffer size=0x%08lx\n",
		stat->subdev.name, (unsigned long)buf_size);

	ret = stat->ops->validate_params(stat, new_conf);
	if (ret) {
		FUNC6(&stat->ioctl_lock);
		FUNC3(stat->isp->dev, "%s: configuration values are invalid.\n",
			stat->subdev.name);
		return ret;
	}

	if (buf_size != user_cfg->buf_size)
		FUNC3(stat->isp->dev,
			"%s: driver has corrected buffer size request to 0x%08lx\n",
			stat->subdev.name,
			(unsigned long)user_cfg->buf_size);

	/*
	 * Hack: H3A modules may need a doubled buffer size to avoid access
	 * to a invalid memory address after a SBL overflow.
	 * The buffer size is always PAGE_ALIGNED.
	 * Hack 2: MAGIC_SIZE is added to buf_size so a magic word can be
	 * inserted at the end to data integrity check purpose.
	 * Hack 3: AF module writes one paxel data more than it should, so
	 * the buffer allocation must consider it to avoid invalid memory
	 * access.
	 * Hack 4: H3A need to allocate extra space for the recover state.
	 */
	if (FUNC0(stat)) {
		buf_size = user_cfg->buf_size * 2 + MAGIC_SIZE;
		if (FUNC1(stat))
			/*
			 * Adding one extra paxel data size for each recover
			 * buffer + 2 regular ones.
			 */
			buf_size += AF_EXTRA_DATA * (NUM_H3A_RECOVER_BUFS + 2);
		if (stat->recover_priv) {
			struct ispstat_generic_config *recover_cfg =
				stat->recover_priv;
			buf_size += recover_cfg->buf_size *
				    NUM_H3A_RECOVER_BUFS;
		}
		buf_size = FUNC2(buf_size);
	} else { /* Histogram */
		buf_size = FUNC2(user_cfg->buf_size + MAGIC_SIZE);
	}

	ret = FUNC4(stat, buf_size);
	if (ret) {
		FUNC6(&stat->ioctl_lock);
		return ret;
	}

	FUNC7(&stat->isp->stat_lock, irqflags);
	stat->ops->set_params(stat, new_conf);
	FUNC8(&stat->isp->stat_lock, irqflags);

	/*
	 * Returning the right future config_counter for this setup, so
	 * userspace can *know* when it has been applied.
	 */
	user_cfg->config_counter = stat->config_counter + stat->inc_config;

	/* Module has a valid configuration. */
	stat->configured = 1;
	FUNC3(stat->isp->dev,
		"%s: module has been successfully configured.\n",
		stat->subdev.name);

	FUNC6(&stat->ioctl_lock);

	return 0;
}