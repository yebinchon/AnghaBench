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
struct TYPE_3__ {int pixelformat; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct pwc_device {int /*<<< orphan*/  pixfmt; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  vframes; int /*<<< orphan*/  vb_queue; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  pixelformat ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int FUNC1 (struct pwc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_format*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pwc_device*,struct v4l2_format*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 struct pwc_device* FUNC5 (struct file*) ; 

__attribute__((used)) static int FUNC6(struct file *file, void *fh, struct v4l2_format *f)
{
	struct pwc_device *pdev = FUNC5(file);
	int ret, pixelformat, compression = 0;

	ret = FUNC3(pdev, f);
	if (ret < 0)
		return ret;

	if (FUNC4(&pdev->vb_queue))
		return -EBUSY;

	pixelformat = f->fmt.pix.pixelformat;

	FUNC0("Trying to set format to: width=%d height=%d fps=%d format=%c%c%c%c\n",
			f->fmt.pix.width, f->fmt.pix.height, pdev->vframes,
			(pixelformat)&255,
			(pixelformat>>8)&255,
			(pixelformat>>16)&255,
			(pixelformat>>24)&255);

	ret = FUNC1(pdev, f->fmt.pix.width, f->fmt.pix.height,
				 pixelformat, 30, &compression, 0);

	FUNC0("pwc_set_video_mode(), return=%d\n", ret);

	FUNC2(f, pdev->width, pdev->height, pdev->pixfmt);
	return ret;
}