#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct vsp1_pipeline* pipe; } ;
struct vsp1_rwpf {TYPE_1__ entity; } ;
struct vsp1_pipeline {int configured; int /*<<< orphan*/  irqlock; } ;
struct vsp1_device {struct vsp1_rwpf** wpf; TYPE_2__* info; } ;
struct TYPE_4__ {unsigned int wpf_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC2 (struct vsp1_pipeline*) ; 
 int /*<<< orphan*/  FUNC3 (struct vsp1_pipeline*) ; 

void FUNC4(struct vsp1_device *vsp1)
{
	unsigned long flags;
	unsigned int i;

	/* Resume all running pipelines. */
	for (i = 0; i < vsp1->info->wpf_count; ++i) {
		struct vsp1_rwpf *wpf = vsp1->wpf[i];
		struct vsp1_pipeline *pipe;

		if (wpf == NULL)
			continue;

		pipe = wpf->entity.pipe;
		if (pipe == NULL)
			continue;

		/*
		 * The hardware may have been reset during a suspend and will
		 * need a full reconfiguration.
		 */
		pipe->configured = false;

		FUNC0(&pipe->irqlock, flags);
		if (FUNC2(pipe))
			FUNC3(pipe);
		FUNC1(&pipe->irqlock, flags);
	}
}