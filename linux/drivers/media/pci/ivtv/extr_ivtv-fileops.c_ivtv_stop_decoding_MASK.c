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
typedef  int /*<<< orphan*/  u64 ;
struct ivtv_stream {int /*<<< orphan*/  s_flags; int /*<<< orphan*/  name; } ;
struct ivtv_open_id {size_t type; scalar_t__ yuv_frames; struct ivtv* itv; } ;
struct ivtv {scalar_t__ output_mode; int /*<<< orphan*/  i_flags; scalar_t__ speed; struct ivtv_stream* streams; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 size_t IVTV_DEC_STREAM_TYPE_YUV ; 
 int /*<<< orphan*/  IVTV_F_I_DECODING_YUV ; 
 int /*<<< orphan*/  IVTV_F_I_DEC_PAUSED ; 
 int /*<<< orphan*/  IVTV_F_S_APPL_IO ; 
 int /*<<< orphan*/  IVTV_F_S_STREAMING ; 
 int /*<<< orphan*/  IVTV_F_S_STREAMOFF ; 
 void* OUT_NONE ; 
 scalar_t__ OUT_UDMA_YUV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ivtv_stream*) ; 
 int /*<<< orphan*/  FUNC4 (struct ivtv_stream*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ivtv*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ivtv_open_id *id, int flags, u64 pts)
{
	struct ivtv *itv = id->itv;
	struct ivtv_stream *s = &itv->streams[id->type];

	FUNC0("close() of %s\n", s->name);

	if (id->type == IVTV_DEC_STREAM_TYPE_YUV &&
		FUNC6(IVTV_F_I_DECODING_YUV, &itv->i_flags)) {
		/* Restore registers we've changed & clean up any mess */
		FUNC5(itv);
	}

	/* Stop decoding */
	if (FUNC6(IVTV_F_S_STREAMING, &s->s_flags)) {
		FUNC1("close stopping decode\n");

		FUNC4(s, flags, pts);
		itv->output_mode = OUT_NONE;
	}
	FUNC2(IVTV_F_S_APPL_IO, &s->s_flags);
	FUNC2(IVTV_F_S_STREAMOFF, &s->s_flags);

	if (itv->output_mode == OUT_UDMA_YUV && id->yuv_frames)
		itv->output_mode = OUT_NONE;

	itv->speed = 0;
	FUNC2(IVTV_F_I_DEC_PAUSED, &itv->i_flags);
	FUNC3(s);
}