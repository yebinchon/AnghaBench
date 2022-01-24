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
struct aspeed_video {int /*<<< orphan*/  flags; int /*<<< orphan*/  eclk; int /*<<< orphan*/  vclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  VE_INTERRUPT_CTRL ; 
 int /*<<< orphan*/  VE_INTERRUPT_STATUS ; 
 int /*<<< orphan*/  VIDEO_CLOCKS_ON ; 
 int /*<<< orphan*/  FUNC0 (struct aspeed_video*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct aspeed_video *video)
{
	if (!FUNC3(VIDEO_CLOCKS_ON, &video->flags))
		return;

	/* Disable interrupts */
	FUNC0(video, VE_INTERRUPT_CTRL, 0);
	FUNC0(video, VE_INTERRUPT_STATUS, 0xffffffff);

	/* Turn off the relevant clocks */
	FUNC2(video->vclk);
	FUNC2(video->eclk);

	FUNC1(VIDEO_CLOCKS_ON, &video->flags);
}