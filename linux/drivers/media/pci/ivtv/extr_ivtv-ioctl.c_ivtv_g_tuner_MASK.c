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
struct v4l2_tuner {scalar_t__ index; scalar_t__ type; int /*<<< orphan*/  name; } ;
struct ivtv {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct ivtv* itv; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_TUNER_RADIO ; 
 TYPE_1__* FUNC0 (void*) ; 
 int /*<<< orphan*/  g_tuner ; 
 int /*<<< orphan*/  FUNC1 (struct ivtv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_tuner*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  tuner ; 

__attribute__((used)) static int FUNC3(struct file *file, void *fh, struct v4l2_tuner *vt)
{
	struct ivtv *itv = FUNC0(fh)->itv;

	if (vt->index != 0)
		return -EINVAL;

	FUNC1(itv, tuner, g_tuner, vt);

	if (vt->type == V4L2_TUNER_RADIO)
		FUNC2(vt->name, "ivtv Radio Tuner", sizeof(vt->name));
	else
		FUNC2(vt->name, "ivtv TV Tuner", sizeof(vt->name));
	return 0;
}