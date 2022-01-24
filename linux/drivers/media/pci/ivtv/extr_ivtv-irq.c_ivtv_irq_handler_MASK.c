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
typedef  int u8 ;
typedef  int u32 ;
struct ivtv_stream {scalar_t__ type; int /*<<< orphan*/  s_flags; } ;
struct ivtv {int irqmask; int last_vsync_field; int irq_rr_idx; int /*<<< orphan*/  dma_reg_lock; int /*<<< orphan*/  irq_work; int /*<<< orphan*/  irq_worker; int /*<<< orphan*/  i_flags; struct ivtv_stream* streams; int /*<<< orphan*/  eos_waitq; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__ IVTV_DEC_STREAM_TYPE_MPG ; 
 scalar_t__ IVTV_DEC_STREAM_TYPE_VBI ; 
 int /*<<< orphan*/  IVTV_F_I_DMA ; 
 int /*<<< orphan*/  IVTV_F_I_EOS ; 
 int /*<<< orphan*/  IVTV_F_I_HAVE_WORK ; 
 int /*<<< orphan*/  IVTV_F_I_PIO ; 
 int /*<<< orphan*/  IVTV_F_I_UDMA_PENDING ; 
 int /*<<< orphan*/  IVTV_F_S_DMA_PENDING ; 
 int /*<<< orphan*/  IVTV_F_S_PIO_PENDING ; 
 int IVTV_IRQ_DEC_AUD_MODE_CHG ; 
 int IVTV_IRQ_DEC_DATA_REQ ; 
 int IVTV_IRQ_DEC_DMA_COMPLETE ; 
 int IVTV_IRQ_DEC_VBI_RE_INSERT ; 
 int IVTV_IRQ_DEC_VSYNC ; 
 int IVTV_IRQ_DMA ; 
 int IVTV_IRQ_DMA_ERR ; 
 int IVTV_IRQ_DMA_READ ; 
 int IVTV_IRQ_ENC_DMA_COMPLETE ; 
 int IVTV_IRQ_ENC_EOS ; 
 int IVTV_IRQ_ENC_PIO_COMPLETE ; 
 int IVTV_IRQ_ENC_START_CAP ; 
 int IVTV_IRQ_ENC_VBI_CAP ; 
 int IVTV_IRQ_ENC_VIM_RST ; 
 int IVTV_MAX_STREAMS ; 
 int /*<<< orphan*/  IVTV_REG_DEC_LINE_FIELD ; 
 int /*<<< orphan*/  IVTV_REG_IRQSTATUS ; 
 int /*<<< orphan*/  FUNC4 (struct ivtv_stream*) ; 
 int /*<<< orphan*/  FUNC5 (struct ivtv_stream*) ; 
 int /*<<< orphan*/  FUNC6 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC7 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC8 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC9 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC10 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC11 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC12 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC13 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC14 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC15 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int,int /*<<< orphan*/ ) ; 

irqreturn_t FUNC25(int irq, void *dev_id)
{
	struct ivtv *itv = (struct ivtv *)dev_id;
	u32 combo;
	u32 stat;
	int i;
	u8 vsync_force = 0;

	FUNC19(&itv->dma_reg_lock);
	/* get contents of irq status register */
	stat = FUNC17(IVTV_REG_IRQSTATUS);

	combo = ~itv->irqmask & stat;

	/* Clear out IRQ */
	if (combo) FUNC24(combo, IVTV_REG_IRQSTATUS);

	if (0 == combo) {
		/* The vsync interrupt is unusual and clears itself. If we
		 * took too long, we may have missed it. Do some checks
		 */
		if (~itv->irqmask & IVTV_IRQ_DEC_VSYNC) {
			/* vsync is enabled, see if we're in a new field */
			if ((itv->last_vsync_field & 1) !=
			    (FUNC17(IVTV_REG_DEC_LINE_FIELD) & 1)) {
				/* New field, looks like we missed it */
				FUNC3("VSync interrupt missed %d\n",
				       FUNC17(IVTV_REG_DEC_LINE_FIELD) >> 16);
				vsync_force = 1;
			}
		}

		if (!vsync_force) {
			/* No Vsync expected, wasn't for us */
			FUNC20(&itv->dma_reg_lock);
			return IRQ_NONE;
		}
	}

	/* Exclude interrupts noted below from the output, otherwise the log is flooded with
	   these messages */
	if (combo & ~0xff6d0400)
		FUNC0("======= valid IRQ bits: 0x%08x ======\n", combo);

	if (combo & IVTV_IRQ_DEC_DMA_COMPLETE) {
		FUNC0("DEC DMA COMPLETE\n");
	}

	if (combo & IVTV_IRQ_DMA_READ) {
		FUNC9(itv);
	}

	if (combo & IVTV_IRQ_ENC_DMA_COMPLETE) {
		FUNC10(itv);
	}

	if (combo & IVTV_IRQ_ENC_PIO_COMPLETE) {
		FUNC11(itv);
	}

	if (combo & IVTV_IRQ_DMA_ERR) {
		FUNC8(itv);
	}

	if (combo & IVTV_IRQ_ENC_START_CAP) {
		FUNC12(itv);
	}

	if (combo & IVTV_IRQ_ENC_VBI_CAP) {
		FUNC13(itv);
	}

	if (combo & IVTV_IRQ_DEC_VBI_RE_INSERT) {
		FUNC7(itv);
	}

	if (combo & IVTV_IRQ_ENC_EOS) {
		FUNC2("ENC EOS\n");
		FUNC18(IVTV_F_I_EOS, &itv->i_flags);
		FUNC23(&itv->eos_waitq);
	}

	if (combo & IVTV_IRQ_DEC_DATA_REQ) {
		FUNC6(itv);
	}

	/* Decoder Vertical Sync - We can't rely on 'combo', so check if vsync enabled */
	if (~itv->irqmask & IVTV_IRQ_DEC_VSYNC) {
		FUNC14(itv);
	}

	if (combo & IVTV_IRQ_ENC_VIM_RST) {
		FUNC2("VIM RST\n");
		/*ivtv_vapi(itv, CX2341X_ENC_REFRESH_INPUT, 0); */
	}

	if (combo & IVTV_IRQ_DEC_AUD_MODE_CHG) {
		FUNC1("Stereo mode changed\n");
	}

	if ((combo & IVTV_IRQ_DMA) && !FUNC22(IVTV_F_I_DMA, &itv->i_flags)) {
		itv->irq_rr_idx++;
		for (i = 0; i < IVTV_MAX_STREAMS; i++) {
			int idx = (i + itv->irq_rr_idx) % IVTV_MAX_STREAMS;
			struct ivtv_stream *s = &itv->streams[idx];

			if (!FUNC21(IVTV_F_S_DMA_PENDING, &s->s_flags))
				continue;
			if (s->type >= IVTV_DEC_STREAM_TYPE_MPG)
				FUNC4(s);
			else
				FUNC5(s);
			break;
		}

		if (i == IVTV_MAX_STREAMS &&
		    FUNC22(IVTV_F_I_UDMA_PENDING, &itv->i_flags))
			FUNC15(itv);
	}

	if ((combo & IVTV_IRQ_DMA) && !FUNC22(IVTV_F_I_PIO, &itv->i_flags)) {
		itv->irq_rr_idx++;
		for (i = 0; i < IVTV_MAX_STREAMS; i++) {
			int idx = (i + itv->irq_rr_idx) % IVTV_MAX_STREAMS;
			struct ivtv_stream *s = &itv->streams[idx];

			if (!FUNC21(IVTV_F_S_PIO_PENDING, &s->s_flags))
				continue;
			if (s->type == IVTV_DEC_STREAM_TYPE_VBI || s->type < IVTV_DEC_STREAM_TYPE_MPG)
				FUNC5(s);
			break;
		}
	}

	if (FUNC21(IVTV_F_I_HAVE_WORK, &itv->i_flags)) {
		FUNC16(&itv->irq_worker, &itv->irq_work);
	}

	FUNC20(&itv->dma_reg_lock);

	/* If we've just handled a 'forced' vsync, it's safest to say it
	 * wasn't ours. Another device may have triggered it at just
	 * the right time.
	 */
	return vsync_force ? IRQ_NONE : IRQ_HANDLED;
}