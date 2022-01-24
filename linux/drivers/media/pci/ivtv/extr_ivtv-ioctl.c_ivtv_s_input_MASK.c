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
typedef  int /*<<< orphan*/  v4l2_std_id ;
struct ivtv {unsigned int nof_inputs; unsigned int active_input; TYPE_4__* streams; int /*<<< orphan*/  tuner_std; TYPE_2__* card; int /*<<< orphan*/  audio_input; int /*<<< orphan*/  capturing; } ;
struct file {int dummy; } ;
struct TYPE_10__ {struct ivtv* itv; } ;
struct TYPE_8__ {int /*<<< orphan*/  tvnorms; } ;
struct TYPE_9__ {TYPE_3__ vdev; } ;
struct TYPE_7__ {TYPE_1__* video_inputs; } ;
struct TYPE_6__ {scalar_t__ video_type; int /*<<< orphan*/  audio_index; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ IVTV_CARD_INPUT_VID_TUNER ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int IVTV_ENC_STREAM_TYPE_VBI ; 
 int /*<<< orphan*/  V4L2_STD_ALL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC4 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC5 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC6 (struct ivtv*) ; 

int FUNC7(struct file *file, void *fh, unsigned int inp)
{
	struct ivtv *itv = FUNC2(fh)->itv;
	v4l2_std_id std;
	int i;

	if (inp >= itv->nof_inputs)
		return -EINVAL;

	if (inp == itv->active_input) {
		FUNC0("Input unchanged\n");
		return 0;
	}

	if (FUNC1(&itv->capturing) > 0) {
		return -EBUSY;
	}

	FUNC0("Changing input from %d to %d\n",
			itv->active_input, inp);

	itv->active_input = inp;
	/* Set the audio input to whatever is appropriate for the
	   input type. */
	itv->audio_input = itv->card->video_inputs[inp].audio_index;

	if (itv->card->video_inputs[inp].video_type == IVTV_CARD_INPUT_VID_TUNER)
		std = itv->tuner_std;
	else
		std = V4L2_STD_ALL;
	for (i = 0; i <= IVTV_ENC_STREAM_TYPE_VBI; i++)
		itv->streams[i].vdev.tvnorms = std;

	/* prevent others from messing with the streams until
	   we're finished changing inputs. */
	FUNC4(itv);
	FUNC6(itv);
	FUNC3(itv);
	FUNC5(itv);

	return 0;
}