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
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct aspeed_video {int frame_rate; int /*<<< orphan*/  base; int /*<<< orphan*/ * dev; int /*<<< orphan*/  buffers; int /*<<< orphan*/  res_work; int /*<<< orphan*/  wait; int /*<<< orphan*/  video_lock; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct aspeed_video*) ; 
 int /*<<< orphan*/  aspeed_video_resolution_work ; 
 int FUNC5 (struct aspeed_video*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct resource*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct aspeed_video* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	int rc;
	struct resource *res;
	struct aspeed_video *video = FUNC8(sizeof(*video), GFP_KERNEL);

	if (!video)
		return -ENOMEM;

	video->frame_rate = 30;
	video->dev = &pdev->dev;
	FUNC11(&video->lock);
	FUNC9(&video->video_lock);
	FUNC7(&video->wait);
	FUNC0(&video->res_work, aspeed_video_resolution_work);
	FUNC1(&video->buffers);

	res = FUNC10(pdev, IORESOURCE_MEM, 0);

	video->base = FUNC6(video->dev, res);

	if (FUNC2(video->base))
		return FUNC3(video->base);

	rc = FUNC4(video);
	if (rc)
		return rc;

	rc = FUNC5(video);
	if (rc)
		return rc;

	return 0;
}