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
typedef  int /*<<< orphan*/  v4l2_std_id ;
struct v4l2_format {int dummy; } ;
struct tw686x_video_channel {int /*<<< orphan*/  fps; int /*<<< orphan*/  vidq; int /*<<< orphan*/  video_standard; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct file*,void*,struct v4l2_format*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,void*,struct v4l2_format*) ; 
 int /*<<< orphan*/  FUNC2 (struct tw686x_video_channel*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct tw686x_video_channel*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 struct tw686x_video_channel* FUNC5 (struct file*) ; 

__attribute__((used)) static int FUNC6(struct file *file, void *priv, v4l2_std_id id)
{
	struct tw686x_video_channel *vc = FUNC5(file);
	struct v4l2_format f;
	int ret;

	if (vc->video_standard == id)
		return 0;

	if (FUNC4(&vc->vidq))
		return -EBUSY;

	ret = FUNC3(vc, id);
	if (ret)
		return ret;
	/*
	 * Adjust format after V4L2_STD_525_60/V4L2_STD_625_50 change,
	 * calling g_fmt and s_fmt will sanitize the height
	 * according to the standard.
	 */
	FUNC0(file, priv, &f);
	FUNC1(file, priv, &f);

	/*
	 * Frame decimation depends on the chosen standard,
	 * so reset it to the current value.
	 */
	FUNC2(vc, vc->fps);
	return 0;
}