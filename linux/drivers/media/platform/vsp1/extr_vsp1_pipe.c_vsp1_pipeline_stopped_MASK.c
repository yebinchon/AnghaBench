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
struct vsp1_pipeline {scalar_t__ state; int /*<<< orphan*/  irqlock; } ;

/* Variables and functions */
 scalar_t__ VSP1_PIPELINE_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

bool FUNC2(struct vsp1_pipeline *pipe)
{
	unsigned long flags;
	bool stopped;

	FUNC0(&pipe->irqlock, flags);
	stopped = pipe->state == VSP1_PIPELINE_STOPPED;
	FUNC1(&pipe->irqlock, flags);

	return stopped;
}