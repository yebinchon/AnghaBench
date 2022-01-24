#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int width; int height; } ;
struct TYPE_7__ {scalar_t__ tvnorms; } ;
struct TYPE_6__ {scalar_t__ tvnorms; } ;
struct vivid_dev {size_t input; unsigned int num_inputs; int* input_type; int tv_audio_input; int* input_brightness; unsigned int* dv_timings_signal_mode; unsigned int* std_signal_mode; unsigned int* query_dv_timings; scalar_t__ ctrl_standard; scalar_t__ ctrl_std_signal_mode; scalar_t__ ctrl_dv_timings; scalar_t__ ctrl_dv_timings_signal_mode; scalar_t__ brightness; scalar_t__ colorspace; TYPE_4__ src_rect; TYPE_3__ vid_cap_dev; TYPE_2__ vbi_cap_dev; int /*<<< orphan*/  vb_vbi_cap_q; int /*<<< orphan*/  vb_vid_cap_q; TYPE_1__* dv_timings_cap; } ;
struct v4l2_bt_timings {int flags; } ;
struct file {int dummy; } ;
struct TYPE_5__ {struct v4l2_bt_timings bt; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
#define  HDMI 131 
 unsigned int SELECTED_DV_TIMINGS ; 
#define  SVID 130 
#define  TV 129 
 int V4L2_DV_FL_IS_CE_VIDEO ; 
 scalar_t__ V4L2_STD_ALL ; 
 unsigned int VIVID_CS_170M ; 
 unsigned int VIVID_CS_709 ; 
 unsigned int VIVID_CS_SRGB ; 
#define  WEBCAM 128 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct vivid_dev* FUNC4 (struct file*) ; 
 int FUNC5 (struct vivid_dev*) ; 
 int FUNC6 (struct vivid_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct vivid_dev*,int) ; 

int FUNC8(struct file *file, void *priv, unsigned i)
{
	struct vivid_dev *dev = FUNC4(file);
	struct v4l2_bt_timings *bt = &dev->dv_timings_cap[dev->input].bt;
	unsigned brightness;

	if (i >= dev->num_inputs)
		return -EINVAL;

	if (i == dev->input)
		return 0;

	if (FUNC3(&dev->vb_vid_cap_q) || FUNC3(&dev->vb_vbi_cap_q))
		return -EBUSY;

	dev->input = i;
	dev->vid_cap_dev.tvnorms = 0;
	if (dev->input_type[i] == TV || dev->input_type[i] == SVID) {
		dev->tv_audio_input = (dev->input_type[i] == TV) ? 0 : 1;
		dev->vid_cap_dev.tvnorms = V4L2_STD_ALL;
	}
	dev->vbi_cap_dev.tvnorms = dev->vid_cap_dev.tvnorms;
	FUNC7(dev, false);

	if (dev->colorspace) {
		switch (dev->input_type[i]) {
		case WEBCAM:
			FUNC2(dev->colorspace, VIVID_CS_SRGB);
			break;
		case TV:
		case SVID:
			FUNC2(dev->colorspace, VIVID_CS_170M);
			break;
		case HDMI:
			if (bt->flags & V4L2_DV_FL_IS_CE_VIDEO) {
				if (dev->src_rect.width == 720 && dev->src_rect.height <= 576)
					FUNC2(dev->colorspace, VIVID_CS_170M);
				else
					FUNC2(dev->colorspace, VIVID_CS_709);
			} else {
				FUNC2(dev->colorspace, VIVID_CS_SRGB);
			}
			break;
		}
	}

	/*
	 * Modify the brightness range depending on the input.
	 * This makes it easy to use vivid to test if applications can
	 * handle control range modifications and is also how this is
	 * typically used in practice as different inputs may be hooked
	 * up to different receivers with different control ranges.
	 */
	brightness = 128 * i + dev->input_brightness[i];
	FUNC1(dev->brightness,
			128 * i, 255 + 128 * i, 1, 128 + 128 * i);
	FUNC2(dev->brightness, brightness);

	/* Restore per-input states. */
	FUNC0(dev->ctrl_dv_timings_signal_mode,
			   FUNC5(dev));
	FUNC0(dev->ctrl_dv_timings, FUNC5(dev) &&
			   dev->dv_timings_signal_mode[dev->input] ==
			   SELECTED_DV_TIMINGS);
	FUNC0(dev->ctrl_std_signal_mode, FUNC6(dev));
	FUNC0(dev->ctrl_standard, FUNC6(dev) &&
			   dev->std_signal_mode[dev->input]);

	if (FUNC5(dev)) {
		FUNC2(dev->ctrl_dv_timings_signal_mode,
				 dev->dv_timings_signal_mode[dev->input]);
		FUNC2(dev->ctrl_dv_timings,
				 dev->query_dv_timings[dev->input]);
	} else if (FUNC6(dev)) {
		FUNC2(dev->ctrl_std_signal_mode,
				 dev->std_signal_mode[dev->input]);
		FUNC2(dev->ctrl_standard,
				 dev->std_signal_mode[dev->input]);
	}

	return 0;
}