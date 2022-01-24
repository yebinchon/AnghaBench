#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct vpe_q_data {int flags; scalar_t__ colorspace; TYPE_1__* fmt; } ;
struct TYPE_15__ {scalar_t__ dma_addr; } ;
struct TYPE_14__ {TYPE_5__ buf; } ;
struct TYPE_12__ {int /*<<< orphan*/  m2m_ctx; } ;
struct vpe_ctx {int sequence; int load_mmrs; TYPE_4__ desc_list; TYPE_3__* dev; scalar_t__ deinterlacing; TYPE_5__ sc_coeff_v; TYPE_5__ sc_coeff_h; TYPE_5__ mmr_adb; int /*<<< orphan*/ ** src_vbs; int /*<<< orphan*/ * dst_vb; TYPE_2__ fh; struct vpe_q_data* q_data; } ;
struct sc_data {scalar_t__ loaded_coeff_h; int load_coeff_h; scalar_t__ loaded_coeff_v; int load_coeff_v; } ;
struct TYPE_13__ {scalar_t__ loaded_mmrs; int /*<<< orphan*/  vpdma; struct sc_data* sc; } ;
struct TYPE_11__ {scalar_t__ coplanar; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFD_MMR_CLIENT ; 
 int /*<<< orphan*/  CFD_SC_CLIENT ; 
 size_t Q_DATA_DST ; 
 int Q_DATA_INTERLACED_SEQ_TB ; 
 size_t Q_DATA_SRC ; 
 int SC_COEF_SRAM_SIZE ; 
 scalar_t__ V4L2_COLORSPACE_SRGB ; 
 int /*<<< orphan*/  VPE_CHAN_CHROMA1_IN ; 
 int /*<<< orphan*/  VPE_CHAN_CHROMA2_IN ; 
 int /*<<< orphan*/  VPE_CHAN_CHROMA3_IN ; 
 int /*<<< orphan*/  VPE_CHAN_CHROMA_OUT ; 
 int /*<<< orphan*/  VPE_CHAN_LUMA1_IN ; 
 int /*<<< orphan*/  VPE_CHAN_LUMA2_IN ; 
 int /*<<< orphan*/  VPE_CHAN_LUMA3_IN ; 
 int /*<<< orphan*/  VPE_CHAN_LUMA_OUT ; 
 int /*<<< orphan*/  VPE_CHAN_MV_IN ; 
 int /*<<< orphan*/  VPE_CHAN_MV_OUT ; 
 int /*<<< orphan*/  VPE_CHAN_RGB_OUT ; 
 int /*<<< orphan*/  VPE_PORT_CHROMA1_IN ; 
 int /*<<< orphan*/  VPE_PORT_CHROMA2_IN ; 
 int /*<<< orphan*/  VPE_PORT_CHROMA3_IN ; 
 int /*<<< orphan*/  VPE_PORT_CHROMA_OUT ; 
 int /*<<< orphan*/  VPE_PORT_LUMA1_IN ; 
 int /*<<< orphan*/  VPE_PORT_LUMA2_IN ; 
 int /*<<< orphan*/  VPE_PORT_LUMA3_IN ; 
 int /*<<< orphan*/  VPE_PORT_LUMA_OUT ; 
 int /*<<< orphan*/  VPE_PORT_MV_IN ; 
 int /*<<< orphan*/  VPE_PORT_MV_OUT ; 
 int /*<<< orphan*/  VPE_PORT_RGB_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vpe_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vpe_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vpe_ctx*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vpe_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct vpe_ctx*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(void *priv)
{
	struct vpe_ctx *ctx = priv;
	struct sc_data *sc = ctx->dev->sc;
	struct vpe_q_data *d_q_data = &ctx->q_data[Q_DATA_DST];
	struct vpe_q_data *s_q_data = &ctx->q_data[Q_DATA_SRC];

	if (ctx->deinterlacing && s_q_data->flags & Q_DATA_INTERLACED_SEQ_TB &&
		ctx->sequence % 2 == 0) {
		/* When using SEQ_TB buffers, When using it first time,
		 * No need to remove the buffer as the next field is present
		 * in the same buffer. (so that job_ready won't fail)
		 * It will be removed when using bottom field
		 */
		ctx->src_vbs[0] = FUNC7(ctx->fh.m2m_ctx);
		FUNC0(ctx->src_vbs[0] == NULL);
	} else {
		ctx->src_vbs[0] = FUNC8(ctx->fh.m2m_ctx);
		FUNC0(ctx->src_vbs[0] == NULL);
	}

	ctx->dst_vb = FUNC6(ctx->fh.m2m_ctx);
	FUNC0(ctx->dst_vb == NULL);

	if (ctx->deinterlacing) {

		if (ctx->src_vbs[2] == NULL) {
			ctx->src_vbs[2] = ctx->src_vbs[0];
			FUNC0(ctx->src_vbs[2] == NULL);
			ctx->src_vbs[1] = ctx->src_vbs[0];
			FUNC0(ctx->src_vbs[1] == NULL);
		}

		/*
		 * we have output the first 2 frames through line average, we
		 * now switch to EDI de-interlacer
		 */
		if (ctx->sequence == 2)
			FUNC3(ctx, 0x3); /* EDI (Y + UV) */
	}

	/* config descriptors */
	if (ctx->dev->loaded_mmrs != ctx->mmr_adb.dma_addr || ctx->load_mmrs) {
		FUNC12(ctx->dev->vpdma, &ctx->mmr_adb);
		FUNC9(&ctx->desc_list, CFD_MMR_CLIENT, &ctx->mmr_adb);

		FUNC5(ctx);

		ctx->dev->loaded_mmrs = ctx->mmr_adb.dma_addr;
		ctx->load_mmrs = false;
	}

	if (sc->loaded_coeff_h != ctx->sc_coeff_h.dma_addr ||
			sc->load_coeff_h) {
		FUNC12(ctx->dev->vpdma, &ctx->sc_coeff_h);
		FUNC10(&ctx->desc_list, CFD_SC_CLIENT,
			&ctx->sc_coeff_h, 0);

		sc->loaded_coeff_h = ctx->sc_coeff_h.dma_addr;
		sc->load_coeff_h = false;
	}

	if (sc->loaded_coeff_v != ctx->sc_coeff_v.dma_addr ||
			sc->load_coeff_v) {
		FUNC12(ctx->dev->vpdma, &ctx->sc_coeff_v);
		FUNC10(&ctx->desc_list, CFD_SC_CLIENT,
			&ctx->sc_coeff_v, SC_COEF_SRAM_SIZE >> 4);

		sc->loaded_coeff_v = ctx->sc_coeff_v.dma_addr;
		sc->load_coeff_v = false;
	}

	/* output data descriptors */
	if (ctx->deinterlacing)
		FUNC2(ctx, VPE_PORT_MV_OUT);

	if (d_q_data->colorspace == V4L2_COLORSPACE_SRGB) {
		FUNC2(ctx, VPE_PORT_RGB_OUT);
	} else {
		FUNC2(ctx, VPE_PORT_LUMA_OUT);
		if (d_q_data->fmt->coplanar)
			FUNC2(ctx, VPE_PORT_CHROMA_OUT);
	}

	/* input data descriptors */
	if (ctx->deinterlacing) {
		FUNC1(ctx, VPE_PORT_LUMA3_IN);
		FUNC1(ctx, VPE_PORT_CHROMA3_IN);

		FUNC1(ctx, VPE_PORT_LUMA2_IN);
		FUNC1(ctx, VPE_PORT_CHROMA2_IN);
	}

	FUNC1(ctx, VPE_PORT_LUMA1_IN);
	FUNC1(ctx, VPE_PORT_CHROMA1_IN);

	if (ctx->deinterlacing)
		FUNC1(ctx, VPE_PORT_MV_IN);

	/* sync on channel control descriptors for input ports */
	FUNC11(&ctx->desc_list, VPE_CHAN_LUMA1_IN);
	FUNC11(&ctx->desc_list, VPE_CHAN_CHROMA1_IN);

	if (ctx->deinterlacing) {
		FUNC11(&ctx->desc_list,
			VPE_CHAN_LUMA2_IN);
		FUNC11(&ctx->desc_list,
			VPE_CHAN_CHROMA2_IN);

		FUNC11(&ctx->desc_list,
			VPE_CHAN_LUMA3_IN);
		FUNC11(&ctx->desc_list,
			VPE_CHAN_CHROMA3_IN);

		FUNC11(&ctx->desc_list, VPE_CHAN_MV_IN);
	}

	/* sync on channel control descriptors for output ports */
	if (d_q_data->colorspace == V4L2_COLORSPACE_SRGB) {
		FUNC11(&ctx->desc_list,
			VPE_CHAN_RGB_OUT);
	} else {
		FUNC11(&ctx->desc_list,
			VPE_CHAN_LUMA_OUT);
		if (d_q_data->fmt->coplanar)
			FUNC11(&ctx->desc_list,
				VPE_CHAN_CHROMA_OUT);
	}

	if (ctx->deinterlacing)
		FUNC11(&ctx->desc_list, VPE_CHAN_MV_OUT);

	FUNC4(ctx);

	FUNC12(ctx->dev->vpdma, &ctx->desc_list.buf);
	FUNC13(ctx->dev->vpdma, &ctx->desc_list, 0);
}