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
struct isp_video {int error; int /*<<< orphan*/  irqlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct isp_video*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct isp_video *video)
{
	unsigned long flags;

	FUNC1(&video->irqlock, flags);
	FUNC0(video, VB2_BUF_STATE_ERROR);
	video->error = true;
	FUNC2(&video->irqlock, flags);
}