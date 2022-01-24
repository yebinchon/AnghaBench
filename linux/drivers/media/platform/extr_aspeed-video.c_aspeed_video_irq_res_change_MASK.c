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
typedef  int /*<<< orphan*/  ulong ;
struct aspeed_video {int /*<<< orphan*/  res_work; int /*<<< orphan*/  flags; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  VIDEO_FRAME_INPRG ; 
 int /*<<< orphan*/  VIDEO_RES_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (struct aspeed_video*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aspeed_video*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct aspeed_video *video, ulong delay)
{
	FUNC3(video->dev, "Resolution changed; resetting\n");

	FUNC5(VIDEO_RES_CHANGE, &video->flags);
	FUNC2(VIDEO_FRAME_INPRG, &video->flags);

	FUNC1(video);
	FUNC0(video, VB2_BUF_STATE_ERROR);

	FUNC4(&video->res_work, delay);
}