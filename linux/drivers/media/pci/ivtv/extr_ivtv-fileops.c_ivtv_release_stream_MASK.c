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
struct ivtv_stream {size_t type; int /*<<< orphan*/  s_flags; int /*<<< orphan*/ * fh; int /*<<< orphan*/  name; struct ivtv* itv; } ;
struct ivtv {struct ivtv_stream* streams; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ IVTV_DEC_STREAM_TYPE_MPG ; 
 size_t IVTV_DEC_STREAM_TYPE_VBI ; 
 scalar_t__ IVTV_ENC_STREAM_TYPE_MPG ; 
 size_t IVTV_ENC_STREAM_TYPE_VBI ; 
 int /*<<< orphan*/  IVTV_F_S_CLAIMED ; 
 int /*<<< orphan*/  IVTV_F_S_INTERNAL_USE ; 
 int /*<<< orphan*/  IVTV_IRQ_DEC_VBI_RE_INSERT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ivtv_stream*) ; 
 int /*<<< orphan*/  FUNC3 (struct ivtv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct ivtv_stream *s)
{
	struct ivtv *itv = s->itv;
	struct ivtv_stream *s_vbi;

	s->fh = NULL;
	if ((s->type == IVTV_DEC_STREAM_TYPE_VBI || s->type == IVTV_ENC_STREAM_TYPE_VBI) &&
		FUNC5(IVTV_F_S_INTERNAL_USE, &s->s_flags)) {
		/* this stream is still in use internally */
		return;
	}
	if (!FUNC4(IVTV_F_S_CLAIMED, &s->s_flags)) {
		FUNC0("Release stream %s not in use!\n", s->name);
		return;
	}

	FUNC2(s);

	/* disable reinsertion interrupt */
	if (s->type == IVTV_DEC_STREAM_TYPE_VBI)
		FUNC3(itv, IVTV_IRQ_DEC_VBI_RE_INSERT);

	/* IVTV_DEC_STREAM_TYPE_MPG needs to release IVTV_DEC_STREAM_TYPE_VBI,
	   IVTV_ENC_STREAM_TYPE_MPG needs to release IVTV_ENC_STREAM_TYPE_VBI,
	   for all other streams we're done */
	if (s->type == IVTV_DEC_STREAM_TYPE_MPG)
		s_vbi = &itv->streams[IVTV_DEC_STREAM_TYPE_VBI];
	else if (s->type == IVTV_ENC_STREAM_TYPE_MPG)
		s_vbi = &itv->streams[IVTV_ENC_STREAM_TYPE_VBI];
	else
		return;

	/* clear internal use flag */
	if (!FUNC4(IVTV_F_S_INTERNAL_USE, &s_vbi->s_flags)) {
		/* was already cleared */
		return;
	}
	if (s_vbi->fh) {
		/* VBI stream still claimed by a file descriptor */
		return;
	}
	/* disable reinsertion interrupt */
	if (s_vbi->type == IVTV_DEC_STREAM_TYPE_VBI)
		FUNC3(itv, IVTV_IRQ_DEC_VBI_RE_INSERT);
	FUNC1(IVTV_F_S_CLAIMED, &s_vbi->s_flags);
	FUNC2(s_vbi);
}