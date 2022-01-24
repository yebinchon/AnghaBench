#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct rcar_drif_sdr {size_t produced; int num_cur_ch; unsigned int hwbuf_size; TYPE_1__* fmt; int /*<<< orphan*/  dma_lock; int /*<<< orphan*/  vb_queue; } ;
struct rcar_drif_hwbuf {int status; int /*<<< orphan*/  addr; } ;
struct TYPE_8__ {int /*<<< orphan*/  timestamp; } ;
struct TYPE_7__ {size_t sequence; TYPE_3__ vb2_buf; int /*<<< orphan*/  field; } ;
struct rcar_drif_frame_buf {TYPE_2__ vb; } ;
struct rcar_drif {scalar_t__ num; struct rcar_drif_hwbuf* buf; struct rcar_drif_sdr* sdr; } ;
struct TYPE_6__ {int /*<<< orphan*/  buffersize; } ;

/* Variables and functions */
 int RCAR_DRIF_BUF_DONE ; 
 int RCAR_DRIF_BUF_OVERFLOW ; 
 int RCAR_DRIF_MAX_CHANNEL ; 
 size_t RCAR_DRIF_NUM_HWBUFS ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 int /*<<< orphan*/  VB2_BUF_STATE_DONE ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct rcar_drif_hwbuf**,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rcar_drif_hwbuf**) ; 
 scalar_t__ FUNC4 (struct rcar_drif_hwbuf**) ; 
 int /*<<< orphan*/  FUNC5 (struct rcar_drif*,size_t) ; 
 struct rcar_drif_frame_buf* FUNC6 (struct rcar_drif_sdr*) ; 
 int /*<<< orphan*/  FUNC7 (struct rcar_drif_sdr*,char*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct rcar_drif_hwbuf* FUNC10 (struct rcar_drif_sdr*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(void *dma_async_param)
{
	struct rcar_drif *ch = dma_async_param;
	struct rcar_drif_sdr *sdr = ch->sdr;
	struct rcar_drif_hwbuf *buf[RCAR_DRIF_MAX_CHANNEL];
	struct rcar_drif_frame_buf *fbuf;
	bool overflow = false;
	u32 idx, produced;
	unsigned int i;

	FUNC8(&sdr->dma_lock);

	/* DMA can be terminated while the callback was waiting on lock */
	if (!FUNC12(&sdr->vb_queue)) {
		FUNC9(&sdr->dma_lock);
		return;
	}

	idx = sdr->produced % RCAR_DRIF_NUM_HWBUFS;
	FUNC5(ch, idx);

	if (sdr->num_cur_ch == RCAR_DRIF_MAX_CHANNEL) {
		buf[0] = ch->num ? FUNC10(sdr, ch->num, idx) :
				&ch->buf[idx];
		buf[1] = ch->num ? &ch->buf[idx] :
				FUNC10(sdr, ch->num, idx);

		/* Check if both DMA buffers are done */
		if (!FUNC3(buf)) {
			FUNC9(&sdr->dma_lock);
			return;
		}

		/* Clear buf done status */
		FUNC2(buf, RCAR_DRIF_BUF_DONE);

		if (FUNC4(buf)) {
			overflow = true;
			/* Clear the flag in status */
			FUNC2(buf, RCAR_DRIF_BUF_OVERFLOW);
		}
	} else {
		buf[0] = &ch->buf[idx];
		if (buf[0]->status & RCAR_DRIF_BUF_OVERFLOW) {
			overflow = true;
			/* Clear the flag in status */
			buf[0]->status &= ~RCAR_DRIF_BUF_OVERFLOW;
		}
	}

	/* Buffer produced for consumption */
	produced = sdr->produced++;
	FUNC9(&sdr->dma_lock);

	FUNC7(sdr, "ch%u: prod %u\n", ch->num, produced);

	/* Get fbuf */
	fbuf = FUNC6(sdr);
	if (!fbuf)
		return;

	for (i = 0; i < RCAR_DRIF_MAX_CHANNEL; i++)
		FUNC1(FUNC13(&fbuf->vb.vb2_buf, 0) +
		       i * sdr->hwbuf_size, buf[i]->addr, sdr->hwbuf_size);

	fbuf->vb.field = V4L2_FIELD_NONE;
	fbuf->vb.sequence = produced;
	fbuf->vb.vb2_buf.timestamp = FUNC0();
	FUNC14(&fbuf->vb.vb2_buf, 0, sdr->fmt->buffersize);

	/* Set error state on overflow */
	FUNC11(&fbuf->vb.vb2_buf,
			overflow ? VB2_BUF_STATE_ERROR : VB2_BUF_STATE_DONE);
}