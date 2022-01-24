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
struct vfe_output {unsigned int wm_num; int /*<<< orphan*/  state; int /*<<< orphan*/ * wm_idx; } ;
struct vfe_line {struct vfe_output output; } ;
struct vfe_device {int /*<<< orphan*/  output_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  VFE_OUTPUT_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vfe_device* FUNC2 (struct vfe_line*) ; 
 int /*<<< orphan*/  FUNC3 (struct vfe_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct vfe_line *line)
{
	struct vfe_device *vfe = FUNC2(line);
	struct vfe_output *output = &line->output;
	unsigned long flags;
	unsigned int i;

	FUNC0(&vfe->output_lock, flags);

	for (i = 0; i < output->wm_num; i++)
		FUNC3(vfe, output->wm_idx[i]);

	output->state = VFE_OUTPUT_OFF;

	FUNC1(&vfe->output_lock, flags);
	return 0;
}