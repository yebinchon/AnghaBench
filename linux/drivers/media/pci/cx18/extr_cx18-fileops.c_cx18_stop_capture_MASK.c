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
struct cx18_stream {int id; int /*<<< orphan*/  s_flags; int /*<<< orphan*/  name; } ;
struct cx18_open_id {size_t type; struct cx18* cx; } ;
struct cx18 {struct cx18_stream* streams; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 size_t CX18_ENC_STREAM_TYPE_IDX ; 
 size_t CX18_ENC_STREAM_TYPE_MPG ; 
 size_t CX18_ENC_STREAM_TYPE_VBI ; 
 int /*<<< orphan*/  CX18_F_S_APPL_IO ; 
 int /*<<< orphan*/  CX18_F_S_INTERNAL_USE ; 
 int /*<<< orphan*/  CX18_F_S_STREAMING ; 
 int /*<<< orphan*/  CX18_F_S_STREAMOFF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cx18_stream*) ; 
 int /*<<< orphan*/  FUNC4 (struct cx18_stream*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct cx18_open_id *id, int gop_end)
{
	struct cx18 *cx = id->cx;
	struct cx18_stream *s = &cx->streams[id->type];
	struct cx18_stream *s_vbi = &cx->streams[CX18_ENC_STREAM_TYPE_VBI];
	struct cx18_stream *s_idx = &cx->streams[CX18_ENC_STREAM_TYPE_IDX];

	FUNC1("close() of %s\n", s->name);

	/* 'Unclaim' this stream */

	/* Stop capturing */
	if (FUNC5(CX18_F_S_STREAMING, &s->s_flags)) {
		FUNC0("close stopping capture\n");
		if (id->type == CX18_ENC_STREAM_TYPE_MPG) {
			/* Stop internal use associated VBI and IDX streams */
			if (FUNC5(CX18_F_S_STREAMING, &s_vbi->s_flags) &&
			    !FUNC5(CX18_F_S_APPL_IO, &s_vbi->s_flags)) {
				FUNC0("close stopping embedded VBI capture\n");
				FUNC4(s_vbi, 0);
			}
			if (FUNC5(CX18_F_S_STREAMING, &s_idx->s_flags)) {
				FUNC0("close stopping IDX capture\n");
				FUNC4(s_idx, 0);
			}
		}
		if (id->type == CX18_ENC_STREAM_TYPE_VBI &&
		    FUNC5(CX18_F_S_INTERNAL_USE, &s->s_flags))
			/* Also used internally, don't stop capturing */
			s->id = -1;
		else
			FUNC4(s, gop_end);
	}
	if (!gop_end) {
		FUNC2(CX18_F_S_APPL_IO, &s->s_flags);
		FUNC2(CX18_F_S_STREAMOFF, &s->s_flags);
		FUNC3(s);
	}
}