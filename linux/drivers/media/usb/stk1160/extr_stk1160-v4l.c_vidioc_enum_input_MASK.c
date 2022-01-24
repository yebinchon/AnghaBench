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
struct v4l2_input {scalar_t__ index; int /*<<< orphan*/  std; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  tvnorms; } ;
struct stk1160 {TYPE_1__ vdev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ STK1160_MAX_INPUT ; 
 scalar_t__ STK1160_SVIDEO_INPUT ; 
 int /*<<< orphan*/  V4L2_INPUT_TYPE_CAMERA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 struct stk1160* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
				struct v4l2_input *i)
{
	struct stk1160 *dev = FUNC1(file);

	if (i->index > STK1160_MAX_INPUT)
		return -EINVAL;

	/* S-Video special handling */
	if (i->index == STK1160_SVIDEO_INPUT)
		FUNC0(i->name, "S-Video");
	else
		FUNC0(i->name, "Composite%d", i->index);

	i->type = V4L2_INPUT_TYPE_CAMERA;
	i->std = dev->vdev.tvnorms;
	return 0;
}