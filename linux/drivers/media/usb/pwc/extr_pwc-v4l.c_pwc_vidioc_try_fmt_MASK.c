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
struct v4l2_format {scalar_t__ type; TYPE_2__ fmt; } ;
struct pwc_device {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
#define  V4L2_PIX_FMT_PWC1 130 
#define  V4L2_PIX_FMT_PWC2 129 
#define  V4L2_PIX_FMT_YUV420 128 
 int FUNC3 (struct pwc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** pwc_image_sizes ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_format*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct pwc_device *pdev, struct v4l2_format *f)
{
	int size;

	if (f->type != V4L2_BUF_TYPE_VIDEO_CAPTURE) {
		FUNC2("Bad video type must be V4L2_BUF_TYPE_VIDEO_CAPTURE\n");
		return -EINVAL;
	}

	switch (f->fmt.pix.pixelformat) {
		case V4L2_PIX_FMT_YUV420:
			break;
		case V4L2_PIX_FMT_PWC1:
			if (FUNC1(pdev->type)) {
				FUNC2("codec1 is only supported for old pwc webcam\n");
				f->fmt.pix.pixelformat = V4L2_PIX_FMT_YUV420;
			}
			break;
		case V4L2_PIX_FMT_PWC2:
			if (FUNC0(pdev->type)) {
				FUNC2("codec23 is only supported for new pwc webcam\n");
				f->fmt.pix.pixelformat = V4L2_PIX_FMT_YUV420;
			}
			break;
		default:
			FUNC2("Unsupported pixel format\n");
			f->fmt.pix.pixelformat = V4L2_PIX_FMT_YUV420;
	}

	size = FUNC3(pdev, f->fmt.pix.width, f->fmt.pix.height);
	FUNC4(f,
			    pwc_image_sizes[size][0],
			    pwc_image_sizes[size][1],
			    f->fmt.pix.pixelformat);

	return 0;
}