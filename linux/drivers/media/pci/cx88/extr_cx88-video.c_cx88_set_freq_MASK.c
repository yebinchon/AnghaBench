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
typedef  struct v4l2_frequency {scalar_t__ tuner; int /*<<< orphan*/  frequency; } const v4l2_frequency ;
struct TYPE_2__ {scalar_t__ tuner_type; } ;
struct cx88_core {int /*<<< orphan*/  freq; TYPE_1__ board; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ UNSET ; 
 int /*<<< orphan*/  FUNC0 (struct cx88_core*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_frequency const*) ; 
 int /*<<< orphan*/  FUNC1 (struct cx88_core*) ; 
 int /*<<< orphan*/  FUNC2 (struct cx88_core*) ; 
 int /*<<< orphan*/  g_frequency ; 
 int /*<<< orphan*/  s_frequency ; 
 int /*<<< orphan*/  tuner ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

int FUNC5(struct cx88_core  *core,
		  const struct v4l2_frequency *f)
{
	struct v4l2_frequency new_freq = *f;

	if (FUNC3(core->board.tuner_type == UNSET))
		return -EINVAL;
	if (FUNC3(f->tuner != 0))
		return -EINVAL;

	FUNC1(core);
	FUNC0(core, tuner, s_frequency, f);
	FUNC0(core, tuner, g_frequency, &new_freq);
	core->freq = new_freq.frequency;

	/* When changing channels it is required to reset TVAUDIO */
	FUNC4(10000, 20000);
	FUNC2(core);

	return 0;
}