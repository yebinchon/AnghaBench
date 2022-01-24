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
struct v4l2_tuner {scalar_t__ index; int /*<<< orphan*/  name; } ;
struct file {int dummy; } ;
struct cx88_core {int dummy; } ;
struct cx8800_dev {struct cx88_core* core; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct cx88_core*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_tuner*) ; 
 int /*<<< orphan*/  g_tuner ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  tuner ; 
 scalar_t__ FUNC2 (int) ; 
 struct cx8800_dev* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
			 struct v4l2_tuner *t)
{
	struct cx8800_dev *dev = FUNC3(file);
	struct cx88_core *core = dev->core;

	if (FUNC2(t->index > 0))
		return -EINVAL;

	FUNC1(t->name, "Radio", sizeof(t->name));

	FUNC0(core, tuner, g_tuner, t);
	return 0;
}