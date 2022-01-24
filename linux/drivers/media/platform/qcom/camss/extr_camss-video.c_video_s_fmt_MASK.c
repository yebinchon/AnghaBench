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
struct v4l2_format {int dummy; } ;
struct file {int dummy; } ;
struct camss_video {struct v4l2_format active_fmt; int /*<<< orphan*/  vb2_q; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct camss_video*,struct v4l2_format*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct camss_video* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *fh, struct v4l2_format *f)
{
	struct camss_video *video = FUNC2(file);
	int ret;

	if (FUNC1(&video->vb2_q))
		return -EBUSY;

	ret = FUNC0(video, f);
	if (ret < 0)
		return ret;

	video->active_fmt = *f;

	return 0;
}