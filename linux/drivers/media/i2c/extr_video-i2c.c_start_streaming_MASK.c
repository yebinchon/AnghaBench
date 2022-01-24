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
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct video_i2c_data {scalar_t__ kthread_vid_cap; TYPE_2__ v4l2_dev; scalar_t__ sequence; TYPE_1__* chip; int /*<<< orphan*/  regmap; } ;
struct vb2_queue {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int (* setup ) (struct video_i2c_data*) ;} ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  VB2_BUF_STATE_QUEUED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct video_i2c_data*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 struct device* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct video_i2c_data*) ; 
 struct video_i2c_data* FUNC8 (struct vb2_queue*) ; 
 int /*<<< orphan*/  FUNC9 (struct vb2_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  video_i2c_thread_vid_cap ; 

__attribute__((used)) static int FUNC10(struct vb2_queue *vq, unsigned int count)
{
	struct video_i2c_data *data = FUNC8(vq);
	struct device *dev = FUNC6(data->regmap);
	int ret;

	if (data->kthread_vid_cap)
		return 0;

	ret = FUNC2(dev);
	if (ret < 0) {
		FUNC5(dev);
		goto error_del_list;
	}

	ret = data->chip->setup(data);
	if (ret)
		goto error_rpm_put;

	data->sequence = 0;
	data->kthread_vid_cap = FUNC1(video_i2c_thread_vid_cap, data,
					    "%s-vid-cap", data->v4l2_dev.name);
	ret = FUNC0(data->kthread_vid_cap);
	if (!ret)
		return 0;

error_rpm_put:
	FUNC3(dev);
	FUNC4(dev);
error_del_list:
	FUNC9(vq, VB2_BUF_STATE_QUEUED);

	return ret;
}