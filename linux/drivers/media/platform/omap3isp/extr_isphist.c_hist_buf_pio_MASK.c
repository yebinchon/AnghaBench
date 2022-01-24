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
typedef  int /*<<< orphan*/  u32 ;
struct ispstat {int buf_size; struct isp_device* isp; TYPE_1__* active_buf; } ;
struct isp_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * virt_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISPHIST_ADDR ; 
 int /*<<< orphan*/  ISPHIST_CNT ; 
 int /*<<< orphan*/  ISPHIST_CNT_CLEAR ; 
 int /*<<< orphan*/  ISPHIST_DATA ; 
 int /*<<< orphan*/  OMAP3_ISP_IOMEM_HIST ; 
 int STAT_BUF_DONE ; 
 int STAT_NO_BUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ispstat*) ; 
 int /*<<< orphan*/  FUNC2 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ispstat *hist)
{
	struct isp_device *isp = hist->isp;
	u32 *buf = hist->active_buf->virt_addr;
	unsigned int i;

	if (!buf) {
		FUNC0(isp->dev, "hist: invalid PIO buffer address\n");
		FUNC1(hist);
		return STAT_NO_BUF;
	}

	FUNC5(isp, 0, OMAP3_ISP_IOMEM_HIST, ISPHIST_ADDR);

	/*
	 * By setting it, the histogram internal buffer is being cleared at the
	 * same time it's being read. This bit must be cleared just after all
	 * data is acquired.
	 */
	FUNC4(isp, OMAP3_ISP_IOMEM_HIST, ISPHIST_CNT, ISPHIST_CNT_CLEAR);

	/*
	 * We'll read 4 times a 4-bytes-word at each iteration for
	 * optimization. It avoids 3/4 of the jumps. We also know buf_size is
	 * divisible by 16.
	 */
	for (i = hist->buf_size / 16; i > 0; i--) {
		*buf++ = FUNC3(isp, OMAP3_ISP_IOMEM_HIST, ISPHIST_DATA);
		*buf++ = FUNC3(isp, OMAP3_ISP_IOMEM_HIST, ISPHIST_DATA);
		*buf++ = FUNC3(isp, OMAP3_ISP_IOMEM_HIST, ISPHIST_DATA);
		*buf++ = FUNC3(isp, OMAP3_ISP_IOMEM_HIST, ISPHIST_DATA);
	}
	FUNC2(hist->isp, OMAP3_ISP_IOMEM_HIST, ISPHIST_CNT,
		    ISPHIST_CNT_CLEAR);

	return STAT_BUF_DONE;
}