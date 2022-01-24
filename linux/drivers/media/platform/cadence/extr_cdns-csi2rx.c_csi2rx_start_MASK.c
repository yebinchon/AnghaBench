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
struct csi2rx_priv {int num_lanes; unsigned int* lanes; unsigned int max_lanes; unsigned int max_streams; int /*<<< orphan*/  p_clk; int /*<<< orphan*/ * pixel_clk; int /*<<< orphan*/  sys_clk; scalar_t__ base; int /*<<< orphan*/  source_subdev; } ;
typedef  int /*<<< orphan*/  lanes_used ;

/* Variables and functions */
 int FUNC0 (unsigned int,unsigned int) ; 
 scalar_t__ CSI2RX_STATIC_CFG_REG ; 
 int CSI2RX_STREAM_CFG_FIFO_MODE_LARGE_BUF ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int CSI2RX_STREAM_CTRL_START ; 
 int CSI2RX_STREAM_DATA_CFG_EN_VC_SELECT ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 int FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct csi2rx_priv*) ; 
 unsigned int FUNC8 (unsigned long*,int) ; 
 int /*<<< orphan*/  s_stream ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,unsigned long*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  video ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct csi2rx_priv *csi2rx)
{
	unsigned int i;
	unsigned long lanes_used = 0;
	u32 reg;
	int ret;

	ret = FUNC6(csi2rx->p_clk);
	if (ret)
		return ret;

	FUNC7(csi2rx);

	reg = csi2rx->num_lanes << 8;
	for (i = 0; i < csi2rx->num_lanes; i++) {
		reg |= FUNC0(i, csi2rx->lanes[i]);
		FUNC9(csi2rx->lanes[i], &lanes_used);
	}

	/*
	 * Even the unused lanes need to be mapped. In order to avoid
	 * to map twice to the same physical lane, keep the lanes used
	 * in the previous loop, and only map unused physical lanes to
	 * the rest of our logical lanes.
	 */
	for (i = csi2rx->num_lanes; i < csi2rx->max_lanes; i++) {
		unsigned int idx = FUNC8(&lanes_used,
						       sizeof(lanes_used));
		FUNC9(idx, &lanes_used);
		reg |= FUNC0(i, i + 1);
	}

	FUNC11(reg, csi2rx->base + CSI2RX_STATIC_CFG_REG);

	ret = FUNC10(csi2rx->source_subdev, video, s_stream, true);
	if (ret)
		goto err_disable_pclk;

	/*
	 * Create a static mapping between the CSI virtual channels
	 * and the output stream.
	 *
	 * This should be enhanced, but v4l2 lacks the support for
	 * changing that mapping dynamically.
	 *
	 * We also cannot enable and disable independent streams here,
	 * hence the reference counting.
	 */
	for (i = 0; i < csi2rx->max_streams; i++) {
		ret = FUNC6(csi2rx->pixel_clk[i]);
		if (ret)
			goto err_disable_pixclk;

		FUNC11(CSI2RX_STREAM_CFG_FIFO_MODE_LARGE_BUF,
		       csi2rx->base + FUNC1(i));

		FUNC11(CSI2RX_STREAM_DATA_CFG_EN_VC_SELECT |
		       FUNC4(i),
		       csi2rx->base + FUNC3(i));

		FUNC11(CSI2RX_STREAM_CTRL_START,
		       csi2rx->base + FUNC2(i));
	}

	ret = FUNC6(csi2rx->sys_clk);
	if (ret)
		goto err_disable_pixclk;

	FUNC5(csi2rx->p_clk);

	return 0;

err_disable_pixclk:
	for (; i > 0; i--)
		FUNC5(csi2rx->pixel_clk[i - 1]);

err_disable_pclk:
	FUNC5(csi2rx->p_clk);

	return ret;
}