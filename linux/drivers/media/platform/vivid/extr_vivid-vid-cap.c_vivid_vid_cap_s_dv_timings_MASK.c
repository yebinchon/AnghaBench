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
struct vivid_dev {size_t input; struct v4l2_dv_timings* dv_timings_cap; int /*<<< orphan*/  vb_vid_cap_q; } ;
struct v4l2_dv_timings {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODATA ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_dv_timings*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct v4l2_dv_timings*,struct v4l2_dv_timings*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_dv_timings*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct vivid_dev* FUNC4 (struct file*) ; 
 int /*<<< orphan*/  vivid_dv_timings_cap ; 
 int /*<<< orphan*/  FUNC5 (struct vivid_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct vivid_dev*,int) ; 

int FUNC7(struct file *file, void *_fh,
				    struct v4l2_dv_timings *timings)
{
	struct vivid_dev *dev = FUNC4(file);

	if (!FUNC5(dev))
		return -ENODATA;
	if (!FUNC0(timings, &vivid_dv_timings_cap,
				      0, NULL, NULL) &&
	    !FUNC2(timings))
		return -EINVAL;

	if (FUNC1(timings, &dev->dv_timings_cap[dev->input],
				  0, false))
		return 0;
	if (FUNC3(&dev->vb_vid_cap_q))
		return -EBUSY;

	dev->dv_timings_cap[dev->input] = *timings;
	FUNC6(dev, false);
	return 0;
}