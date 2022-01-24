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
struct omap3isp_h3a_aewb_config {int win_height; int ver_win_count; int /*<<< orphan*/  buf_size; void* subsample_hor_inc; void* subsample_ver_inc; void* blk_win_height; scalar_t__ ver_win_start; scalar_t__ blk_ver_win_start; int /*<<< orphan*/  hor_win_count; int /*<<< orphan*/  win_width; int /*<<< orphan*/  saturation_limit; } ;
struct ispstat {struct omap3isp_h3a_aewb_config* recover_priv; struct isp_device* isp; int /*<<< orphan*/  event_type; struct omap3isp_h3a_aewb_config* priv; int /*<<< orphan*/ * ops; } ;
struct isp_device {int /*<<< orphan*/  dev; struct ispstat isp_aewb; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  OMAP3ISP_AEWB_MAX_SATURATION_LIM ; 
 void* OMAP3ISP_AEWB_MIN_SUB_INC ; 
 int /*<<< orphan*/  OMAP3ISP_AEWB_MIN_WINHC ; 
 int OMAP3ISP_AEWB_MIN_WINVC ; 
 void* OMAP3ISP_AEWB_MIN_WIN_H ; 
 int /*<<< orphan*/  OMAP3ISP_AEWB_MIN_WIN_W ; 
 int /*<<< orphan*/  V4L2_EVENT_OMAP3ISP_AEWB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct omap3isp_h3a_aewb_config*) ; 
 int /*<<< orphan*/  h3a_aewb_ops ; 
 int /*<<< orphan*/  h3a_aewb_subdev_ops ; 
 scalar_t__ FUNC2 (struct ispstat*,struct omap3isp_h3a_aewb_config*) ; 
 int /*<<< orphan*/  FUNC3 (struct omap3isp_h3a_aewb_config*) ; 
 struct omap3isp_h3a_aewb_config* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ispstat*,char*,int /*<<< orphan*/ *) ; 

int FUNC6(struct isp_device *isp)
{
	struct ispstat *aewb = &isp->isp_aewb;
	struct omap3isp_h3a_aewb_config *aewb_cfg;
	struct omap3isp_h3a_aewb_config *aewb_recover_cfg = NULL;
	int ret;

	aewb_cfg = FUNC4(sizeof(*aewb_cfg), GFP_KERNEL);
	if (!aewb_cfg)
		return -ENOMEM;

	aewb->ops = &h3a_aewb_ops;
	aewb->priv = aewb_cfg;
	aewb->event_type = V4L2_EVENT_OMAP3ISP_AEWB;
	aewb->isp = isp;

	/* Set recover state configuration */
	aewb_recover_cfg = FUNC4(sizeof(*aewb_recover_cfg), GFP_KERNEL);
	if (!aewb_recover_cfg) {
		FUNC0(aewb->isp->dev,
			"AEWB: cannot allocate memory for recover configuration.\n");
		ret = -ENOMEM;
		goto err;
	}

	aewb_recover_cfg->saturation_limit = OMAP3ISP_AEWB_MAX_SATURATION_LIM;
	aewb_recover_cfg->win_height = OMAP3ISP_AEWB_MIN_WIN_H;
	aewb_recover_cfg->win_width = OMAP3ISP_AEWB_MIN_WIN_W;
	aewb_recover_cfg->ver_win_count = OMAP3ISP_AEWB_MIN_WINVC;
	aewb_recover_cfg->hor_win_count = OMAP3ISP_AEWB_MIN_WINHC;
	aewb_recover_cfg->blk_ver_win_start = aewb_recover_cfg->ver_win_start +
		aewb_recover_cfg->win_height * aewb_recover_cfg->ver_win_count;
	aewb_recover_cfg->blk_win_height = OMAP3ISP_AEWB_MIN_WIN_H;
	aewb_recover_cfg->subsample_ver_inc = OMAP3ISP_AEWB_MIN_SUB_INC;
	aewb_recover_cfg->subsample_hor_inc = OMAP3ISP_AEWB_MIN_SUB_INC;

	if (FUNC2(aewb, aewb_recover_cfg)) {
		FUNC0(aewb->isp->dev,
			"AEWB: recover configuration is invalid.\n");
		ret = -EINVAL;
		goto err;
	}

	aewb_recover_cfg->buf_size = FUNC1(aewb_recover_cfg);
	aewb->recover_priv = aewb_recover_cfg;

	ret = FUNC5(aewb, "AEWB", &h3a_aewb_subdev_ops);

err:
	if (ret) {
		FUNC3(aewb_cfg);
		FUNC3(aewb_recover_cfg);
	}

	return ret;
}