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
typedef  int /*<<< orphan*/  v4l2_std_id ;
struct vpif_capture_config {struct vpif_capture_chan_config* chan_config; } ;
struct vpif_capture_chan_config {TYPE_1__* inputs; } ;
struct video_device {int dummy; } ;
struct v4l2_input {scalar_t__ capabilities; } ;
struct file {int dummy; } ;
struct common_obj {int /*<<< orphan*/  buffer_queue; } ;
struct TYPE_5__ {int /*<<< orphan*/  dv_timings; int /*<<< orphan*/  stdid; } ;
struct channel_obj {size_t channel_id; size_t input_idx; int /*<<< orphan*/  sd; TYPE_2__ video; struct common_obj* common; } ;
struct TYPE_6__ {struct vpif_capture_config* platform_data; } ;
struct TYPE_4__ {struct v4l2_input input; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODATA ; 
 int ENODEV ; 
 int ENOIOCTLCMD ; 
 scalar_t__ V4L2_IN_CAP_STD ; 
 size_t VPIF_VIDEO_INDEX ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  s_std ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  video ; 
 struct video_device* FUNC3 (struct file*) ; 
 struct channel_obj* FUNC4 (struct video_device*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* vpif_dev ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (struct channel_obj*) ; 

__attribute__((used)) static int FUNC8(struct file *file, void *priv, v4l2_std_id std_id)
{
	struct vpif_capture_config *config = vpif_dev->platform_data;
	struct video_device *vdev = FUNC3(file);
	struct channel_obj *ch = FUNC4(vdev);
	struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];
	struct vpif_capture_chan_config *chan_cfg;
	struct v4l2_input input;
	int ret;

	FUNC5(2, debug, "vpif_s_std\n");

	if (!config->chan_config[ch->channel_id].inputs)
		return -ENODATA;

	chan_cfg = &config->chan_config[ch->channel_id];
	input = chan_cfg->inputs[ch->input_idx].input;
	if (input.capabilities != V4L2_IN_CAP_STD)
		return -ENODATA;

	if (FUNC2(&common->buffer_queue))
		return -EBUSY;

	/* Call encoder subdevice function to set the standard */
	ch->video.stdid = std_id;
	FUNC0(&ch->video.dv_timings, 0, sizeof(ch->video.dv_timings));

	/* Get the information about the standard */
	if (FUNC7(ch)) {
		FUNC6("Error getting the standard info\n");
		return -EINVAL;
	}

	/* set standard in the sub device */
	ret = FUNC1(ch->sd, video, s_std, std_id);
	if (ret && ret != -ENOIOCTLCMD && ret != -ENODEV) {
		FUNC5(1, debug, "Failed to set standard for sub devices\n");
		return ret;
	}
	return 0;
}