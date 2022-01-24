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
struct vivid_dev {int video_buffer_size; int /*<<< orphan*/  fb_info; int /*<<< orphan*/ * video_vbase; int /*<<< orphan*/  video_pbase; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int GFP_DMA32 ; 
 int GFP_KERNEL ; 
 int MAX_OSD_HEIGHT ; 
 int MAX_OSD_WIDTH ; 
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vivid_dev*) ; 
 int FUNC5 (struct vivid_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct vivid_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct vivid_dev *dev)
{
	int ret;

	dev->video_buffer_size = MAX_OSD_HEIGHT * MAX_OSD_WIDTH * 2;
	dev->video_vbase = FUNC0(dev->video_buffer_size, GFP_KERNEL | GFP_DMA32);
	if (dev->video_vbase == NULL)
		return -ENOMEM;
	dev->video_pbase = FUNC3(dev->video_vbase);

	FUNC1("Framebuffer at 0x%lx, mapped to 0x%p, size %dk\n",
			dev->video_pbase, dev->video_vbase,
			dev->video_buffer_size / 1024);

	/* Set the startup video mode information */
	ret = FUNC5(dev);
	if (ret) {
		FUNC6(dev);
		return ret;
	}

	FUNC4(dev);

	/* Register the framebuffer */
	if (FUNC2(&dev->fb_info) < 0) {
		FUNC6(dev);
		return -EINVAL;
	}

	/* Set the card to the requested mode */
	FUNC7(&dev->fb_info);
	return 0;

}