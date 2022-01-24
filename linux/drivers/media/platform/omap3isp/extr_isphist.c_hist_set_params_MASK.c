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
struct omap3isp_hist_config {int num_acc_frames; int /*<<< orphan*/  buf_size; } ;
struct ispstat {int update; int /*<<< orphan*/  inc_config; int /*<<< orphan*/  configured; struct omap3isp_hist_config* priv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ispstat*,struct omap3isp_hist_config*) ; 
 int /*<<< orphan*/  FUNC1 (struct omap3isp_hist_config*) ; 
 int /*<<< orphan*/  FUNC2 (struct omap3isp_hist_config*,struct omap3isp_hist_config*,int) ; 

__attribute__((used)) static void FUNC3(struct ispstat *hist, void *new_conf)
{
	struct omap3isp_hist_config *user_cfg = new_conf;
	struct omap3isp_hist_config *cur_cfg = hist->priv;

	if (!hist->configured || FUNC0(hist, user_cfg)) {
		FUNC2(cur_cfg, user_cfg, sizeof(*user_cfg));
		if (user_cfg->num_acc_frames == 0)
			user_cfg->num_acc_frames = 1;
		hist->inc_config++;
		hist->update = 1;
		/*
		 * User might be asked for a bigger buffer than necessary for
		 * this configuration. In order to return the right amount of
		 * data during buffer request, let's calculate the size here
		 * instead of stick with user_cfg->buf_size.
		 */
		cur_cfg->buf_size = FUNC1(cur_cfg);

	}
}