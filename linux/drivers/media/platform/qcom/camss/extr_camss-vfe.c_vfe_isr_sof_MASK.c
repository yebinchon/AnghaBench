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
struct vfe_output {int /*<<< orphan*/  sof; scalar_t__ wait_sof; } ;
struct vfe_device {int /*<<< orphan*/  output_lock; TYPE_1__* line; } ;
typedef  enum vfe_line_id { ____Placeholder_vfe_line_id } vfe_line_id ;
struct TYPE_2__ {struct vfe_output output; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct vfe_device *vfe, enum vfe_line_id line_id)
{
	struct vfe_output *output;
	unsigned long flags;

	FUNC1(&vfe->output_lock, flags);
	output = &vfe->line[line_id].output;
	if (output->wait_sof) {
		output->wait_sof = 0;
		FUNC0(&output->sof);
	}
	FUNC2(&vfe->output_lock, flags);
}