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
struct file {int dummy; } ;
struct cx88_core {int dummy; } ;
struct cx8800_dev {struct cx88_core* core; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_1__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct cx88_core*) ; 
 int /*<<< orphan*/  FUNC2 (struct cx88_core*,unsigned int) ; 
 struct cx8800_dev* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv, unsigned int i)
{
	struct cx8800_dev *dev = FUNC3(file);
	struct cx88_core *core = dev->core;

	if (i >= 4)
		return -EINVAL;
	if (!FUNC0(i).type)
		return -EINVAL;

	FUNC1(core);
	FUNC2(core, i);
	return 0;
}