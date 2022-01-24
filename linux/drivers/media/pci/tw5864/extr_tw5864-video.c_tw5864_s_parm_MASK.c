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
struct v4l2_fract {int numerator; int denominator; } ;
struct TYPE_3__ {struct v4l2_fract timeperframe; } ;
struct TYPE_4__ {TYPE_1__ capture; } ;
struct v4l2_streamparm {TYPE_2__ parm; } ;
struct tw5864_input {int frame_interval; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tw5864_input*) ; 
 int FUNC1 (struct tw5864_input*,struct v4l2_fract*) ; 
 int FUNC2 (struct file*,void*,struct v4l2_streamparm*) ; 
 struct tw5864_input* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
			 struct v4l2_streamparm *sp)
{
	struct tw5864_input *input = FUNC3(file);
	struct v4l2_fract *t = &sp->parm.capture.timeperframe;
	struct v4l2_fract time_base;
	int ret;

	ret = FUNC1(input, &time_base);
	if (ret)
		return ret;

	if (!t->numerator || !t->denominator) {
		t->numerator = time_base.numerator * input->frame_interval;
		t->denominator = time_base.denominator;
	} else if (t->denominator != time_base.denominator) {
		t->numerator = t->numerator * time_base.denominator /
			t->denominator;
		t->denominator = time_base.denominator;
	}

	input->frame_interval = t->numerator / time_base.numerator;
	if (input->frame_interval < 1)
		input->frame_interval = 1;
	FUNC0(input);
	return FUNC2(file, priv, sp);
}