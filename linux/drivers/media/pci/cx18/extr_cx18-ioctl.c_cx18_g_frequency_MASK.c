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
struct v4l2_frequency {scalar_t__ tuner; } ;
struct file {int dummy; } ;
struct cx18 {int dummy; } ;
struct TYPE_2__ {struct cx18* cx; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct cx18*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_frequency*) ; 
 TYPE_1__* FUNC1 (void*) ; 
 int /*<<< orphan*/  g_frequency ; 
 int /*<<< orphan*/  tuner ; 

__attribute__((used)) static int FUNC2(struct file *file, void *fh,
				struct v4l2_frequency *vf)
{
	struct cx18 *cx = FUNC1(fh)->cx;

	if (vf->tuner != 0)
		return -EINVAL;

	FUNC0(cx, tuner, g_frequency, vf);
	return 0;
}