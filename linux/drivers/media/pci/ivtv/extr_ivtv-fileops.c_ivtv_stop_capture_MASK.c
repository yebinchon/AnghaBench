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
struct ivtv_stream {int /*<<< orphan*/  s_flags; int /*<<< orphan*/ * fh; int /*<<< orphan*/  name; } ;
struct ivtv_open_id {size_t type; struct ivtv* itv; } ;
struct ivtv {struct ivtv_stream* streams; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 size_t IVTV_DEC_STREAM_TYPE_VBI ; 
 size_t IVTV_ENC_STREAM_TYPE_MPG ; 
 size_t IVTV_ENC_STREAM_TYPE_VBI ; 
 int /*<<< orphan*/  IVTV_F_S_APPL_IO ; 
 int /*<<< orphan*/  IVTV_F_S_INTERNAL_USE ; 
 int /*<<< orphan*/  IVTV_F_S_STREAMING ; 
 int /*<<< orphan*/  IVTV_F_S_STREAMOFF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ivtv_stream*) ; 
 int /*<<< orphan*/  FUNC4 (struct ivtv_stream*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct ivtv_open_id *id, int gop_end)
{
	struct ivtv *itv = id->itv;
	struct ivtv_stream *s = &itv->streams[id->type];

	FUNC0("close() of %s\n", s->name);

	/* 'Unclaim' this stream */

	/* Stop capturing */
	if (FUNC5(IVTV_F_S_STREAMING, &s->s_flags)) {
		struct ivtv_stream *s_vbi = &itv->streams[IVTV_ENC_STREAM_TYPE_VBI];

		FUNC1("close stopping capture\n");
		/* Special case: a running VBI capture for VBI insertion
		   in the mpeg stream. Need to stop that too. */
		if (id->type == IVTV_ENC_STREAM_TYPE_MPG &&
		    FUNC5(IVTV_F_S_STREAMING, &s_vbi->s_flags) &&
		    !FUNC5(IVTV_F_S_APPL_IO, &s_vbi->s_flags)) {
			FUNC1("close stopping embedded VBI capture\n");
			FUNC4(s_vbi, 0);
		}
		if ((id->type == IVTV_DEC_STREAM_TYPE_VBI ||
		     id->type == IVTV_ENC_STREAM_TYPE_VBI) &&
		    FUNC5(IVTV_F_S_INTERNAL_USE, &s->s_flags)) {
			/* Also used internally, don't stop capturing */
			s->fh = NULL;
		}
		else {
			FUNC4(s, gop_end);
		}
	}
	if (!gop_end) {
		FUNC2(IVTV_F_S_APPL_IO, &s->s_flags);
		FUNC2(IVTV_F_S_STREAMOFF, &s->s_flags);
		FUNC3(s);
	}
}