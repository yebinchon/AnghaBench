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
struct ivtv_stream {scalar_t__ type; int /*<<< orphan*/  s_flags; int /*<<< orphan*/  name; } ;
struct ivtv {int cur_pio_stream; int /*<<< orphan*/  dma_waitq; struct ivtv_stream* streams; int /*<<< orphan*/  i_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX2341X_ENC_SCHED_DMA_TO_HOST ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ IVTV_ENC_STREAM_TYPE_MPG ; 
 scalar_t__ IVTV_ENC_STREAM_TYPE_PCM ; 
 size_t IVTV_ENC_STREAM_TYPE_VBI ; 
 scalar_t__ IVTV_ENC_STREAM_TYPE_YUV ; 
 int /*<<< orphan*/  IVTV_F_I_PIO ; 
 int /*<<< orphan*/  IVTV_F_S_DMA_HAS_VBI ; 
 int IVTV_MAX_STREAMS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ivtv_stream*) ; 
 int /*<<< orphan*/  FUNC3 (struct ivtv*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ivtv *itv)
{
	struct ivtv_stream *s;

	if (itv->cur_pio_stream < 0 || itv->cur_pio_stream >= IVTV_MAX_STREAMS) {
		itv->cur_pio_stream = -1;
		return;
	}
	s = &itv->streams[itv->cur_pio_stream];
	FUNC0("ENC PIO COMPLETE %s\n", s->name);
	FUNC1(IVTV_F_I_PIO, &itv->i_flags);
	itv->cur_pio_stream = -1;
	FUNC2(s);
	if (s->type == IVTV_ENC_STREAM_TYPE_MPG)
		FUNC3(itv, CX2341X_ENC_SCHED_DMA_TO_HOST, 3, 0, 0, 0);
	else if (s->type == IVTV_ENC_STREAM_TYPE_YUV)
		FUNC3(itv, CX2341X_ENC_SCHED_DMA_TO_HOST, 3, 0, 0, 1);
	else if (s->type == IVTV_ENC_STREAM_TYPE_PCM)
		FUNC3(itv, CX2341X_ENC_SCHED_DMA_TO_HOST, 3, 0, 0, 2);
	FUNC1(IVTV_F_I_PIO, &itv->i_flags);
	if (FUNC4(IVTV_F_S_DMA_HAS_VBI, &s->s_flags)) {
		s = &itv->streams[IVTV_ENC_STREAM_TYPE_VBI];
		FUNC2(s);
	}
	FUNC5(&itv->dma_waitq);
}