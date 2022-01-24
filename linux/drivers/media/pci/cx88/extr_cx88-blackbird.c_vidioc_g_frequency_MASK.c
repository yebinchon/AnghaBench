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
struct v4l2_frequency {scalar_t__ tuner; int /*<<< orphan*/  frequency; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ tuner_type; } ;
struct cx88_core {int /*<<< orphan*/  freq; TYPE_1__ board; } ;
struct cx8802_dev {struct cx88_core* core; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ UNSET ; 
 int /*<<< orphan*/  FUNC0 (struct cx88_core*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_frequency*) ; 
 int /*<<< orphan*/  g_frequency ; 
 int /*<<< orphan*/  tuner ; 
 scalar_t__ FUNC1 (int) ; 
 struct cx8802_dev* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
			      struct v4l2_frequency *f)
{
	struct cx8802_dev *dev = FUNC2(file);
	struct cx88_core *core = dev->core;

	if (FUNC1(core->board.tuner_type == UNSET))
		return -EINVAL;
	if (FUNC1(f->tuner != 0))
		return -EINVAL;

	f->frequency = core->freq;
	FUNC0(core, tuner, g_frequency, f);

	return 0;
}