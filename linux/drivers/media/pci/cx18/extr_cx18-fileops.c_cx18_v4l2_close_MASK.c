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
struct file {struct v4l2_fh* private_data; } ;
struct cx18_stream {scalar_t__ id; int /*<<< orphan*/  handle; int /*<<< orphan*/  name; } ;
struct cx18_open_id {size_t type; scalar_t__ open_id; struct cx18* cx; } ;
struct TYPE_2__ {int /*<<< orphan*/  video_mute_yuv; int /*<<< orphan*/  video_mute; } ;
struct cx18 {int /*<<< orphan*/  serialize_lock; TYPE_1__ cxhdl; int /*<<< orphan*/  ana_capturing; int /*<<< orphan*/  std; int /*<<< orphan*/  i_flags; struct cx18_stream* streams; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX18_CPU_SET_VIDEO_MUTE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 size_t CX18_ENC_STREAM_TYPE_RAD ; 
 int /*<<< orphan*/  CX18_F_I_RADIO_USER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC4 (struct cx18*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC6 (struct cx18_open_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC8 (struct cx18*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 struct cx18_open_id* FUNC9 (struct v4l2_fh*) ; 
 int /*<<< orphan*/  FUNC10 (struct cx18_open_id*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_std ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct v4l2_fh*) ; 
 int /*<<< orphan*/  FUNC15 (struct v4l2_fh*) ; 
 scalar_t__ FUNC16 (struct file*) ; 
 int /*<<< orphan*/  video ; 

int FUNC17(struct file *filp)
{
	struct v4l2_fh *fh = filp->private_data;
	struct cx18_open_id *id = FUNC9(fh);
	struct cx18 *cx = id->cx;
	struct cx18_stream *s = &cx->streams[id->type];

	FUNC0("close() of %s\n", s->name);

	FUNC11(&cx->serialize_lock);
	/* Stop radio */
	if (id->type == CX18_ENC_STREAM_TYPE_RAD &&
			FUNC16(filp)) {
		/* Closing radio device, return to TV mode */
		FUNC5(cx);
		/* Mark that the radio is no longer in use */
		FUNC2(CX18_F_I_RADIO_USER, &cx->i_flags);
		/* Switch tuner to TV */
		FUNC4(cx, video, s_std, cx->std);
		/* Select correct audio input (i.e. TV tuner or Line in) */
		FUNC3(cx);
		if (FUNC1(&cx->ana_capturing) > 0) {
			/* Undo video mute */
			FUNC8(cx, CX18_CPU_SET_VIDEO_MUTE, 2, s->handle,
			    (FUNC13(cx->cxhdl.video_mute) |
			    (FUNC13(cx->cxhdl.video_mute_yuv) << 8)));
		}
		/* Done! Unmute and continue. */
		FUNC7(cx);
	}

	FUNC14(fh);
	FUNC15(fh);

	/* 'Unclaim' this stream */
	if (s->id == id->open_id)
		FUNC6(id, 0);
	FUNC10(id);
	FUNC12(&cx->serialize_lock);
	return 0;
}