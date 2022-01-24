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
struct v4l2_frequency {scalar_t__ tuner; int /*<<< orphan*/  frequency; } ;
struct TYPE_3__ {scalar_t__ vfl_dir; } ;
struct ivtv_stream {TYPE_1__ vdev; } ;
struct ivtv {struct ivtv_stream* streams; } ;
struct file {int dummy; } ;
struct TYPE_4__ {size_t type; struct ivtv* itv; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTTY ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct ivtv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_frequency const*) ; 
 int /*<<< orphan*/  FUNC3 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC4 (struct ivtv*) ; 
 int /*<<< orphan*/  s_frequency ; 
 int /*<<< orphan*/  tuner ; 

int FUNC5(struct file *file, void *fh, const struct v4l2_frequency *vf)
{
	struct ivtv *itv = FUNC1(fh)->itv;
	struct ivtv_stream *s = &itv->streams[FUNC1(fh)->type];

	if (s->vdev.vfl_dir)
		return -ENOTTY;
	if (vf->tuner != 0)
		return -EINVAL;

	FUNC3(itv);
	FUNC0("v4l2 ioctl: set frequency %d\n", vf->frequency);
	FUNC2(itv, tuner, s_frequency, vf);
	FUNC4(itv);
	return 0;
}