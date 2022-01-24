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
struct v4l2_audio {scalar_t__ index; } ;
struct ivtv {scalar_t__ nof_audio_inputs; scalar_t__ audio_input; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct ivtv* itv; } ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_1__* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct ivtv*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *fh, const struct v4l2_audio *vout)
{
	struct ivtv *itv = FUNC0(fh)->itv;

	if (vout->index >= itv->nof_audio_inputs)
		return -EINVAL;

	itv->audio_input = vout->index;
	FUNC1(itv);

	return 0;
}