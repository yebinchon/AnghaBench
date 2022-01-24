#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  vbi; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct TYPE_6__ {int /*<<< orphan*/  type; } ;
struct TYPE_9__ {TYPE_1__ in; TYPE_3__* sliced_in; } ;
struct ivtv {int /*<<< orphan*/  sd_video; TYPE_4__ vbi; int /*<<< orphan*/  capturing; } ;
struct file {int dummy; } ;
struct TYPE_10__ {struct ivtv* itv; } ;
struct TYPE_8__ {scalar_t__ service_set; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VBI_CAPTURE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC1 (void*) ; 
 int FUNC2 (struct file*,void*,struct v4l2_format*) ; 
 int /*<<< orphan*/  FUNC3 (struct ivtv*) ; 
 int /*<<< orphan*/  s_raw_fmt ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vbi ; 

__attribute__((used)) static int FUNC5(struct file *file, void *fh, struct v4l2_format *fmt)
{
	struct ivtv *itv = FUNC1(fh)->itv;

	if (!FUNC3(itv) && FUNC0(&itv->capturing) > 0)
		return -EBUSY;
	itv->vbi.sliced_in->service_set = 0;
	itv->vbi.in.type = V4L2_BUF_TYPE_VBI_CAPTURE;
	FUNC4(itv->sd_video, vbi, s_raw_fmt, &fmt->fmt.vbi);
	return FUNC2(file, fh, fmt);
}