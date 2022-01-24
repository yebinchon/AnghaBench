#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ tvnorms; } ;
struct TYPE_3__ {scalar_t__ tvnorms; } ;
struct vivid_dev {unsigned int num_outputs; unsigned int output; scalar_t__* output_type; int /*<<< orphan*/ * display_present; int /*<<< orphan*/  ctrl_display_present; TYPE_2__ vid_out_dev; TYPE_1__ vbi_out_dev; scalar_t__ tv_audio_output; int /*<<< orphan*/  vb_vbi_out_q; int /*<<< orphan*/  vb_vid_out_q; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ SVID ; 
 scalar_t__ V4L2_STD_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct vivid_dev* FUNC3 (struct file*) ; 
 scalar_t__ FUNC4 (struct vivid_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct vivid_dev*) ; 

int FUNC6(struct file *file, void *priv, unsigned o)
{
	struct vivid_dev *dev = FUNC3(file);

	if (o >= dev->num_outputs)
		return -EINVAL;

	if (o == dev->output)
		return 0;

	if (FUNC2(&dev->vb_vid_out_q) || FUNC2(&dev->vb_vbi_out_q))
		return -EBUSY;

	dev->output = o;
	dev->tv_audio_output = 0;
	if (dev->output_type[o] == SVID)
		dev->vid_out_dev.tvnorms = V4L2_STD_ALL;
	else
		dev->vid_out_dev.tvnorms = 0;

	dev->vbi_out_dev.tvnorms = dev->vid_out_dev.tvnorms;
	FUNC5(dev);

	FUNC0(dev->ctrl_display_present, FUNC4(dev));
	if (FUNC4(dev))
		FUNC1(dev->ctrl_display_present,
				 dev->display_present[dev->output]);

	return 0;
}