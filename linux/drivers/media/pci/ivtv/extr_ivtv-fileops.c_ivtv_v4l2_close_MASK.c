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
struct v4l2_fh {int dummy; } ;
struct ivtv_stream {scalar_t__ type; int /*<<< orphan*/  s_flags; int /*<<< orphan*/ * fh; int /*<<< orphan*/  name; } ;
struct ivtv_open_id {size_t type; int /*<<< orphan*/  fh; struct ivtv* itv; } ;
struct TYPE_2__ {int /*<<< orphan*/  video_mute_yuv; int /*<<< orphan*/  video_mute; } ;
struct ivtv {int hw_flags; scalar_t__ output_mode; int /*<<< orphan*/  serialize_lock; struct ivtv_stream* streams; TYPE_1__ cxhdl; int /*<<< orphan*/  capturing; int /*<<< orphan*/  std; int /*<<< orphan*/  i_flags; } ;
struct file {struct v4l2_fh* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX2341X_ENC_MUTE_VIDEO ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ IVTV_DEC_STREAM_TYPE_MPG ; 
 size_t IVTV_DEC_STREAM_TYPE_VOUT ; 
 size_t IVTV_ENC_STREAM_TYPE_RAD ; 
 int /*<<< orphan*/  IVTV_F_I_RADIO_USER ; 
 int /*<<< orphan*/  IVTV_F_S_APPL_IO ; 
 int IVTV_HW_SAA711X ; 
 scalar_t__ OUT_NONE ; 
 int /*<<< orphan*/  SAA7115_FREQ_32_11_MHZ ; 
 int V4L2_DEC_CMD_STOP_IMMEDIATELY ; 
 int V4L2_DEC_CMD_STOP_TO_BLACK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ivtv_open_id* FUNC3 (struct v4l2_fh*) ; 
 int /*<<< orphan*/  FUNC4 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC5 (struct ivtv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ivtv*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC8 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC9 (struct ivtv_open_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ivtv_open_id*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC12 (struct ivtv*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ivtv_open_id*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_crystal_freq ; 
 int /*<<< orphan*/  s_std ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct v4l2_fh*) ; 
 int /*<<< orphan*/  FUNC19 (struct v4l2_fh*) ; 
 scalar_t__ FUNC20 (struct file*) ; 
 int /*<<< orphan*/  video ; 

int FUNC21(struct file *filp)
{
	struct v4l2_fh *fh = filp->private_data;
	struct ivtv_open_id *id = FUNC3(fh);
	struct ivtv *itv = id->itv;
	struct ivtv_stream *s = &itv->streams[id->type];

	FUNC0("close %s\n", s->name);

	FUNC14(&itv->serialize_lock);

	/* Stop radio */
	if (id->type == IVTV_ENC_STREAM_TYPE_RAD &&
			FUNC20(filp)) {
		/* Closing radio device, return to TV mode */
		FUNC8(itv);
		/* Mark that the radio is no longer in use */
		FUNC2(IVTV_F_I_RADIO_USER, &itv->i_flags);
		/* Switch tuner to TV */
		FUNC5(itv, video, s_std, itv->std);
		/* Select correct audio input (i.e. TV tuner or Line in) */
		FUNC4(itv);
		if (itv->hw_flags & IVTV_HW_SAA711X) {
			FUNC6(itv, IVTV_HW_SAA711X, video, s_crystal_freq,
					SAA7115_FREQ_32_11_MHZ, 0);
		}
		if (FUNC1(&itv->capturing) > 0) {
			/* Undo video mute */
			FUNC12(itv, CX2341X_ENC_MUTE_VIDEO, 1,
					FUNC17(itv->cxhdl.video_mute) |
					(FUNC17(itv->cxhdl.video_mute_yuv) << 8));
		}
		/* Done! Unmute and continue. */
		FUNC11(itv);
	}

	FUNC18(fh);
	FUNC19(fh);

	/* Easy case first: this stream was never claimed by us */
	if (s->fh != &id->fh)
		goto close_done;

	/* 'Unclaim' this stream */

	if (s->type >= IVTV_DEC_STREAM_TYPE_MPG) {
		struct ivtv_stream *s_vout = &itv->streams[IVTV_DEC_STREAM_TYPE_VOUT];

		FUNC10(id, V4L2_DEC_CMD_STOP_TO_BLACK | V4L2_DEC_CMD_STOP_IMMEDIATELY, 0);

		/* If all output streams are closed, and if the user doesn't have
		   IVTV_DEC_STREAM_TYPE_VOUT open, then disable CC on TV-out. */
		if (itv->output_mode == OUT_NONE && !FUNC16(IVTV_F_S_APPL_IO, &s_vout->s_flags)) {
			/* disable CC on TV-out */
			FUNC7(itv);
		}
	} else {
		FUNC9(id, 0);
	}
close_done:
	FUNC13(id);
	FUNC15(&itv->serialize_lock);
	return 0;
}