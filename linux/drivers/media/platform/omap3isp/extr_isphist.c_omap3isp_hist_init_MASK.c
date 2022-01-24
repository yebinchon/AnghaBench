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
struct omap3isp_hist_config {int dummy; } ;
struct ispstat {int /*<<< orphan*/ * dma_ch; int /*<<< orphan*/  event_type; struct omap3isp_hist_config* priv; int /*<<< orphan*/ * ops; struct isp_device* isp; } ;
struct isp_device {int /*<<< orphan*/  dev; struct ispstat isp_hist; } ;
typedef  int /*<<< orphan*/  dma_cap_mask_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_SLAVE ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HIST_CONFIG_DMA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  V4L2_EVENT_OMAP3ISP_HIST ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hist_ops ; 
 int /*<<< orphan*/  hist_subdev_ops ; 
 int /*<<< orphan*/  FUNC10 (struct omap3isp_hist_config*) ; 
 struct omap3isp_hist_config* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct ispstat*,char*,int /*<<< orphan*/ *) ; 

int FUNC13(struct isp_device *isp)
{
	struct ispstat *hist = &isp->isp_hist;
	struct omap3isp_hist_config *hist_cfg;
	int ret;

	hist_cfg = FUNC11(sizeof(*hist_cfg), GFP_KERNEL);
	if (hist_cfg == NULL)
		return -ENOMEM;

	hist->isp = isp;

	if (HIST_CONFIG_DMA) {
		dma_cap_mask_t mask;

		/*
		 * We need slave capable channel without DMA request line for
		 * reading out the data.
		 * For this we can use dma_request_chan_by_mask() as we are
		 * happy with any channel as long as it is capable of slave
		 * configuration.
		 */
		FUNC6(mask);
		FUNC5(DMA_SLAVE, mask);
		hist->dma_ch = FUNC9(&mask);
		if (FUNC0(hist->dma_ch)) {
			ret = FUNC2(hist->dma_ch);
			if (ret == -EPROBE_DEFER)
				goto err;

			hist->dma_ch = NULL;
			FUNC4(isp->dev,
				 "hist: DMA channel request failed, using PIO\n");
		} else {
			FUNC3(isp->dev, "hist: using DMA channel %s\n",
				FUNC7(hist->dma_ch));
		}
	}

	hist->ops = &hist_ops;
	hist->priv = hist_cfg;
	hist->event_type = V4L2_EVENT_OMAP3ISP_HIST;

	ret = FUNC12(hist, "histogram", &hist_subdev_ops);

err:
	if (ret) {
		if (!FUNC1(hist->dma_ch))
			FUNC8(hist->dma_ch);
		FUNC10(hist_cfg);
	}

	return ret;
}