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
struct pwc_device {int /*<<< orphan*/  height; int /*<<< orphan*/  width; scalar_t__ frame_trailer_size; scalar_t__ frame_header_size; scalar_t__ frame_size; scalar_t__ frame_total_size; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 (struct pwc_device*,int,int) ; 
 int FUNC7 (struct pwc_device*,int,int,int,int*,int) ; 
 int FUNC8 (struct pwc_device*,int,int,int,int*,int) ; 
 int FUNC9 (struct pwc_device*,int,int,int,int*,int) ; 
 int /*<<< orphan*/ * size2name ; 

int FUNC10(struct pwc_device *pdev, int width, int height,
	int pixfmt, int frames, int *compression, int send_to_cam)
{
	int ret, size;

	FUNC2("set_video_mode(%dx%d @ %d, pixfmt %08x).\n",
		       width, height, frames, pixfmt);
	size = FUNC6(pdev, width, height);
	FUNC5("decode_size = %d.\n", size);

	if (FUNC0(pdev->type)) {
		ret = FUNC8(pdev, size, pixfmt, frames,
					  compression, send_to_cam);
	} else if (FUNC1(pdev->type)) {
		ret = FUNC7(pdev, size, pixfmt, frames,
					   compression, send_to_cam);
	} else {
		ret = FUNC9(pdev, size, pixfmt, frames,
					   compression, send_to_cam);
	}
	if (ret < 0) {
		FUNC4("Failed to set video mode %s@%d fps; return code = %d\n", size2name[size], frames, ret);
		return ret;
	}
	pdev->frame_total_size = pdev->frame_size + pdev->frame_header_size + pdev->frame_trailer_size;
	FUNC3("Set resolution to %dx%d\n", pdev->width, pdev->height);
	return 0;
}