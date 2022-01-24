#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vfe_output {int /*<<< orphan*/  pending_bufs; int /*<<< orphan*/ ** buf; int /*<<< orphan*/  state; } ;
struct vfe_device {TYPE_1__* line; } ;
struct TYPE_2__ {struct vfe_output output; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VFE_OUTPUT_OFF ; 

__attribute__((used)) static void FUNC2(struct vfe_device *vfe)
{
	int i;

	for (i = 0; i < FUNC0(vfe->line); i++) {
		struct vfe_output *output = &vfe->line[i].output;

		output->state = VFE_OUTPUT_OFF;
		output->buf[0] = NULL;
		output->buf[1] = NULL;
		FUNC1(&output->pending_bufs);
	}
}