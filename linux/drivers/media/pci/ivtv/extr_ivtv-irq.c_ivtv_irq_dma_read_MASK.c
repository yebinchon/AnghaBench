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
struct TYPE_2__ {int /*<<< orphan*/  bytesused; } ;
struct ivtv_stream {scalar_t__ sg_processed; scalar_t__ sg_processing_size; scalar_t__ type; int /*<<< orphan*/  waitq; int /*<<< orphan*/  q_free; TYPE_1__ q_dma; int /*<<< orphan*/  name; } ;
struct ivtv_buffer {int dummy; } ;
struct ivtv {size_t cur_dma_stream; int dma_retries; int /*<<< orphan*/  dma_waitq; int /*<<< orphan*/  i_flags; struct ivtv_stream* streams; int /*<<< orphan*/  dma_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX2341X_DEC_SCHED_DMA_FROM_HOST ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,scalar_t__,scalar_t__,int) ; 
 scalar_t__ IVTV_DEC_STREAM_TYPE_YUV ; 
 int /*<<< orphan*/  IVTV_F_I_DMA ; 
 int /*<<< orphan*/  IVTV_F_I_UDMA ; 
 int /*<<< orphan*/  IVTV_REG_DMASTATUS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ivtv_stream*,struct ivtv_buffer*) ; 
 struct ivtv_buffer* FUNC6 (struct ivtv_stream*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct ivtv_stream*) ; 
 int /*<<< orphan*/  FUNC8 (struct ivtv_stream*,struct ivtv_buffer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ivtv_stream*) ; 
 int /*<<< orphan*/  FUNC10 (struct ivtv*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct ivtv *itv)
{
	struct ivtv_stream *s = NULL;
	struct ivtv_buffer *buf;
	int hw_stream_type = 0;

	FUNC1("DEC DMA READ\n");

	FUNC4(&itv->dma_timer);

	if (!FUNC12(IVTV_F_I_UDMA, &itv->i_flags) && itv->cur_dma_stream < 0)
		return;

	if (!FUNC12(IVTV_F_I_UDMA, &itv->i_flags)) {
		s = &itv->streams[itv->cur_dma_stream];
		FUNC9(s);

		if (FUNC11(IVTV_REG_DMASTATUS) & 0x14) {
			FUNC2("DEC DMA ERROR %x (xfer %d of %d, retry %d)\n",
					FUNC11(IVTV_REG_DMASTATUS),
					s->sg_processed, s->sg_processing_size, itv->dma_retries);
			FUNC14(FUNC11(IVTV_REG_DMASTATUS) & 3, IVTV_REG_DMASTATUS);
			if (itv->dma_retries == 3) {
				/* Too many retries, give up on this frame */
				itv->dma_retries = 0;
				s->sg_processed = s->sg_processing_size;
			}
			else {
				/* Retry, starting with the first xfer segment.
				   Just retrying the current segment is not sufficient. */
				s->sg_processed = 0;
				itv->dma_retries++;
			}
		}
		if (s->sg_processed < s->sg_processing_size) {
			/* DMA next buffer */
			FUNC7(s);
			return;
		}
		if (s->type == IVTV_DEC_STREAM_TYPE_YUV)
			hw_stream_type = 2;
		FUNC0("DEC DATA READ %s: %d\n", s->name, s->q_dma.bytesused);

		/* For some reason must kick the firmware, like PIO mode,
		   I think this tells the firmware we are done and the size
		   of the xfer so it can calculate what we need next.
		   I think we can do this part ourselves but would have to
		   fully calculate xfer info ourselves and not use interrupts
		 */
		FUNC10(itv, CX2341X_DEC_SCHED_DMA_FROM_HOST, 3, 0, s->q_dma.bytesused,
				hw_stream_type);

		/* Free last DMA call */
		while ((buf = FUNC6(s, &s->q_dma)) != NULL) {
			FUNC5(s, buf);
			FUNC8(s, buf, &s->q_free);
		}
		FUNC13(&s->waitq);
	}
	FUNC3(IVTV_F_I_UDMA, &itv->i_flags);
	FUNC3(IVTV_F_I_DMA, &itv->i_flags);
	itv->cur_dma_stream = -1;
	FUNC13(&itv->dma_waitq);
}