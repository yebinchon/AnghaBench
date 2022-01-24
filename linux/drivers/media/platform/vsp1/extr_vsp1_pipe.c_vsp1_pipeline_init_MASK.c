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
struct vsp1_pipeline {int /*<<< orphan*/  state; int /*<<< orphan*/  entities; int /*<<< orphan*/  kref; int /*<<< orphan*/  wq; int /*<<< orphan*/  irqlock; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VSP1_PIPELINE_STOPPED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct vsp1_pipeline *pipe)
{
	FUNC3(&pipe->lock);
	FUNC4(&pipe->irqlock);
	FUNC1(&pipe->wq);
	FUNC2(&pipe->kref);

	FUNC0(&pipe->entities);
	pipe->state = VSP1_PIPELINE_STOPPED;
}