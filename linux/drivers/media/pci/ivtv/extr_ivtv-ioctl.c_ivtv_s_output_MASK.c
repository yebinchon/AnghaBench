#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ivtv {unsigned int active_output; TYPE_2__* card; } ;
struct file {int dummy; } ;
struct TYPE_6__ {struct ivtv* itv; } ;
struct TYPE_5__ {unsigned int nof_outputs; TYPE_1__* video_outputs; } ;
struct TYPE_4__ {int /*<<< orphan*/  video_output; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  IVTV_HW_SAA7127 ; 
 int /*<<< orphan*/  SAA7127_INPUT_TYPE_NORMAL ; 
 TYPE_3__* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct ivtv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_routing ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static int FUNC3(struct file *file, void *fh, unsigned int outp)
{
	struct ivtv *itv = FUNC1(fh)->itv;

	if (outp >= itv->card->nof_outputs)
		return -EINVAL;

	if (outp == itv->active_output) {
		FUNC0("Output unchanged\n");
		return 0;
	}
	FUNC0("Changing output from %d to %d\n",
		   itv->active_output, outp);

	itv->active_output = outp;
	FUNC2(itv, IVTV_HW_SAA7127, video, s_routing,
			SAA7127_INPUT_TYPE_NORMAL,
			itv->card->video_outputs[outp].video_output, 0);

	return 0;
}