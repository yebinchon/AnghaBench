#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cx18_stream {scalar_t__ type; int /*<<< orphan*/  waitq; int /*<<< orphan*/  s_flags; int /*<<< orphan*/  handle; struct cx18* cx; } ;
struct cx18 {int /*<<< orphan*/  cxhdl; int /*<<< orphan*/  tot_capturing; int /*<<< orphan*/  ana_capturing; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX18_CPU_CAPTURE_STOP ; 
 int /*<<< orphan*/  CX18_CPU_DE_RELEASE_MDL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  CX18_DESTROY_TASK ; 
 int /*<<< orphan*/  CX18_DSP0_INTERRUPT_MASK ; 
 scalar_t__ CX18_ENC_STREAM_TYPE_MPG ; 
 scalar_t__ CX18_ENC_STREAM_TYPE_TS ; 
 int /*<<< orphan*/  CX18_F_S_STOPPING ; 
 int /*<<< orphan*/  CX18_F_S_STREAMING ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  CX18_INVALID_TASK_HANDLE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct cx18_stream*) ; 
 int /*<<< orphan*/  FUNC6 (struct cx18*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (struct cx18*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct cx18_stream *s, int gop_end)
{
	struct cx18 *cx = s->cx;

	if (!FUNC5(s))
		return -EINVAL;

	/* This function assumes that you are allowed to stop the capture
	   and that we are actually capturing */

	FUNC0("Stop Capture\n");

	if (FUNC3(&cx->tot_capturing) == 0)
		return 0;

	FUNC9(CX18_F_S_STOPPING, &s->s_flags);
	if (s->type == CX18_ENC_STREAM_TYPE_MPG)
		FUNC6(cx, CX18_CPU_CAPTURE_STOP, 2, s->handle, !gop_end);
	else
		FUNC6(cx, CX18_CPU_CAPTURE_STOP, 1, s->handle);

	if (s->type == CX18_ENC_STREAM_TYPE_MPG && gop_end) {
		FUNC1("ignoring gop_end: not (yet?) supported by the firmware\n");
	}

	if (s->type != CX18_ENC_STREAM_TYPE_TS)
		FUNC2(&cx->ana_capturing);
	FUNC2(&cx->tot_capturing);

	/* Clear capture and no-read bits */
	FUNC4(CX18_F_S_STREAMING, &s->s_flags);

	/* Tell the CX23418 it can't use our buffers anymore */
	FUNC6(cx, CX18_CPU_DE_RELEASE_MDL, 1, s->handle);

	FUNC6(cx, CX18_DESTROY_TASK, 1, s->handle);
	s->handle = CX18_INVALID_TASK_HANDLE;
	FUNC4(CX18_F_S_STOPPING, &s->s_flags);

	if (FUNC3(&cx->tot_capturing) > 0)
		return 0;

	FUNC8(&cx->cxhdl, 0);
	FUNC7(cx, 5, CX18_DSP0_INTERRUPT_MASK);
	FUNC10(&s->waitq);

	return 0;
}