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
struct TYPE_2__ {int /*<<< orphan*/  clk; } ;
struct xvtc_device {TYPE_1__ xvip; int /*<<< orphan*/  has_generator; } ;
struct xvtc_config {int vblank_start; int hblank_start; int hsize; int vsize; int hsync_end; int hsync_start; int vsync_end; int vsync_start; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  XVIP_CTRL_CONTROL ; 
 int XVIP_CTRL_CONTROL_REG_UPDATE ; 
 int XVTC_ACTIVE_HSIZE_SHIFT ; 
 int /*<<< orphan*/  XVTC_ACTIVE_SIZE ; 
 int XVTC_ACTIVE_VSIZE_SHIFT ; 
 int XVTC_CONTROL_ACTIVE_CHROMA_POL_SRC ; 
 int XVTC_CONTROL_ACTIVE_HSIZE_SRC ; 
 int XVTC_CONTROL_ACTIVE_VIDEO_POL_SRC ; 
 int XVTC_CONTROL_ACTIVE_VSIZE_SRC ; 
 int XVTC_CONTROL_CHROMA_SRC ; 
 int XVTC_CONTROL_FRAME_HSIZE_SRC ; 
 int XVTC_CONTROL_FRAME_VSIZE_SRC ; 
 int XVTC_CONTROL_GEN_ENABLE ; 
 int XVTC_CONTROL_HBLANK_POL_SRC ; 
 int XVTC_CONTROL_HSYNC_END_SRC ; 
 int XVTC_CONTROL_HSYNC_POL_SRC ; 
 int XVTC_CONTROL_HSYNC_START_SRC ; 
 int XVTC_CONTROL_VBLANK_HOFF_SRC ; 
 int XVTC_CONTROL_VBLANK_POL_SRC ; 
 int XVTC_CONTROL_VSYNC_END_SRC ; 
 int XVTC_CONTROL_VSYNC_POL_SRC ; 
 int XVTC_CONTROL_VSYNC_START_SRC ; 
 int /*<<< orphan*/  XVTC_ENCODING ; 
 int /*<<< orphan*/  XVTC_F0_VBLANK_H ; 
 int /*<<< orphan*/  XVTC_F0_VSYNC_H ; 
 int /*<<< orphan*/  XVTC_F0_VSYNC_V ; 
 int XVTC_F0_VSYNC_VEND_SHIFT ; 
 int XVTC_F0_VSYNC_VSTART_SHIFT ; 
 int /*<<< orphan*/  XVTC_HSIZE ; 
 int /*<<< orphan*/  XVTC_HSYNC ; 
 int XVTC_HSYNC_END_SHIFT ; 
 int XVTC_HSYNC_START_SHIFT ; 
 int /*<<< orphan*/  XVTC_POLARITY ; 
 int XVTC_POLARITY_ACTIVE_CHROMA_POL ; 
 int XVTC_POLARITY_ACTIVE_VIDEO_POL ; 
 int XVTC_POLARITY_HBLANK_POL ; 
 int XVTC_POLARITY_HSYNC_POL ; 
 int XVTC_POLARITY_VBLANK_POL ; 
 int XVTC_POLARITY_VSYNC_POL ; 
 int /*<<< orphan*/  XVTC_VSIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct xvtc_device*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct xvtc_device *xvtc,
			 const struct xvtc_config *config)
{
	int ret;

	if (!xvtc->has_generator)
		return -ENXIO;

	ret = FUNC0(xvtc->xvip.clk);
	if (ret < 0)
		return ret;

	/* We don't care about the chroma active signal, encoding parameters are
	 * not important for now.
	 */
	FUNC2(xvtc, XVTC_POLARITY,
		       XVTC_POLARITY_ACTIVE_CHROMA_POL |
		       XVTC_POLARITY_ACTIVE_VIDEO_POL |
		       XVTC_POLARITY_HSYNC_POL | XVTC_POLARITY_VSYNC_POL |
		       XVTC_POLARITY_HBLANK_POL | XVTC_POLARITY_VBLANK_POL);

	/* Hardcode the polarity to active high, as required by the video in to
	 * AXI4-stream core.
	 */
	FUNC2(xvtc, XVTC_ENCODING, 0);

	/* Configure the timings. The VBLANK and VSYNC signals assertion and
	 * deassertion are hardcoded to the first pixel of the line.
	 */
	FUNC2(xvtc, XVTC_ACTIVE_SIZE,
		       (config->vblank_start << XVTC_ACTIVE_VSIZE_SHIFT) |
		       (config->hblank_start << XVTC_ACTIVE_HSIZE_SHIFT));
	FUNC2(xvtc, XVTC_HSIZE, config->hsize);
	FUNC2(xvtc, XVTC_VSIZE, config->vsize);
	FUNC2(xvtc, XVTC_HSYNC,
		       (config->hsync_end << XVTC_HSYNC_END_SHIFT) |
		       (config->hsync_start << XVTC_HSYNC_START_SHIFT));
	FUNC2(xvtc, XVTC_F0_VBLANK_H, 0);
	FUNC2(xvtc, XVTC_F0_VSYNC_V,
		       (config->vsync_end << XVTC_F0_VSYNC_VEND_SHIFT) |
		       (config->vsync_start << XVTC_F0_VSYNC_VSTART_SHIFT));
	FUNC2(xvtc, XVTC_F0_VSYNC_H, 0);

	/* Enable the generator. Set the source of all generator parameters to
	 * generator registers.
	 */
	FUNC1(&xvtc->xvip, XVIP_CTRL_CONTROL,
		   XVTC_CONTROL_ACTIVE_CHROMA_POL_SRC |
		   XVTC_CONTROL_ACTIVE_VIDEO_POL_SRC |
		   XVTC_CONTROL_HSYNC_POL_SRC | XVTC_CONTROL_VSYNC_POL_SRC |
		   XVTC_CONTROL_HBLANK_POL_SRC | XVTC_CONTROL_VBLANK_POL_SRC |
		   XVTC_CONTROL_CHROMA_SRC | XVTC_CONTROL_VBLANK_HOFF_SRC |
		   XVTC_CONTROL_VSYNC_END_SRC | XVTC_CONTROL_VSYNC_START_SRC |
		   XVTC_CONTROL_ACTIVE_VSIZE_SRC |
		   XVTC_CONTROL_FRAME_VSIZE_SRC | XVTC_CONTROL_HSYNC_END_SRC |
		   XVTC_CONTROL_HSYNC_START_SRC |
		   XVTC_CONTROL_ACTIVE_HSIZE_SRC |
		   XVTC_CONTROL_FRAME_HSIZE_SRC | XVTC_CONTROL_GEN_ENABLE |
		   XVIP_CTRL_CONTROL_REG_UPDATE);

	return 0;
}