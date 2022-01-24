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
struct aspeed_video {int /*<<< orphan*/  flags; int /*<<< orphan*/  vclk; int /*<<< orphan*/  eclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIDEO_CLOCKS_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct aspeed_video *video)
{
	if (FUNC2(VIDEO_CLOCKS_ON, &video->flags))
		return;

	/* Turn on the relevant clocks */
	FUNC0(video->eclk);
	FUNC0(video->vclk);

	FUNC1(VIDEO_CLOCKS_ON, &video->flags);
}