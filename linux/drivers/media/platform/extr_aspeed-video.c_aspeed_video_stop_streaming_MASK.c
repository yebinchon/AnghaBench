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
struct vb2_queue {int dummy; } ;
struct aspeed_video {int /*<<< orphan*/  dev; int /*<<< orphan*/  flags; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  STOP_TIMEOUT ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  VIDEO_FRAME_INPRG ; 
 int /*<<< orphan*/  VIDEO_STREAMING ; 
 int /*<<< orphan*/  FUNC0 (struct aspeed_video*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aspeed_video*) ; 
 int /*<<< orphan*/  FUNC2 (struct aspeed_video*) ; 
 int /*<<< orphan*/  FUNC3 (struct aspeed_video*) ; 
 int /*<<< orphan*/  FUNC4 (struct aspeed_video*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct aspeed_video* FUNC8 (struct vb2_queue*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct vb2_queue *q)
{
	int rc;
	struct aspeed_video *video = FUNC8(q);

	FUNC5(VIDEO_STREAMING, &video->flags);

	rc = FUNC9(video->wait,
				!FUNC7(VIDEO_FRAME_INPRG, &video->flags),
				STOP_TIMEOUT);
	if (!rc) {
		FUNC6(video->dev, "Timed out when stopping streaming\n");

		/*
		 * Need to force stop any DMA and try and get HW into a good
		 * state for future calls to start streaming again.
		 */
		FUNC3(video);
		FUNC4(video);

		FUNC2(video);

		FUNC1(video);
	}

	FUNC0(video, VB2_BUF_STATE_ERROR);
}