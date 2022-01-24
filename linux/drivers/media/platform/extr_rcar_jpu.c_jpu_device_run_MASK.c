#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vb2_v4l2_buffer {int /*<<< orphan*/  vb2_buf; } ;
struct TYPE_7__ {unsigned int width; unsigned int height; TYPE_2__* plane_fmt; } ;
struct jpu_q_data {TYPE_4__* fmtinfo; TYPE_3__ format; } ;
struct TYPE_5__ {int /*<<< orphan*/  m2m_ctx; } ;
struct jpu_ctx {struct jpu* jpu; int /*<<< orphan*/  compr_quality; scalar_t__ encoder; struct jpu_q_data cap_q; struct jpu_q_data out_q; TYPE_1__ fh; } ;
struct jpu_buffer {unsigned char subsampling; int /*<<< orphan*/  compr_quality; } ;
struct jpu {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; struct jpu_ctx* curr; } ;
struct TYPE_8__ {unsigned char num_planes; unsigned char subsampling; } ;
struct TYPE_6__ {unsigned int bytesperline; } ;

/* Variables and functions */
 int /*<<< orphan*/  JCCMD ; 
 unsigned int JCCMD_JSRT ; 
 int /*<<< orphan*/  JCHSZD ; 
 int /*<<< orphan*/  JCHSZU ; 
 int /*<<< orphan*/  JCHTN ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  JCMOD ; 
 unsigned int JCMOD_DSP_DEC ; 
 unsigned int JCMOD_DSP_ENC ; 
 unsigned int JCMOD_MSKIP_ENABLE ; 
 unsigned int JCMOD_PCTR ; 
 unsigned int JCMOD_REDU_420 ; 
 unsigned int JCMOD_REDU_422 ; 
 int /*<<< orphan*/  JCQTN ; 
 int FUNC2 (int) ; 
 unsigned int JCSZ_MASK ; 
 int /*<<< orphan*/  JCVSZD ; 
 int /*<<< orphan*/  JCVSZU ; 
 int /*<<< orphan*/  JIFDCNT ; 
 unsigned int JIFDCNT_SWAP_WB ; 
 int /*<<< orphan*/  JIFDDCA1 ; 
 int /*<<< orphan*/  JIFDDMW ; 
 int /*<<< orphan*/  JIFDDYA1 ; 
 int /*<<< orphan*/  JIFDSA1 ; 
 int /*<<< orphan*/  JIFECNT ; 
 unsigned int JIFECNT_INFT_420 ; 
 unsigned int JIFECNT_INFT_422 ; 
 unsigned int JIFECNT_SWAP_WB ; 
 int /*<<< orphan*/  JIFEDA1 ; 
 int /*<<< orphan*/  JIFESCA1 ; 
 int /*<<< orphan*/  JIFESHSZ ; 
 int /*<<< orphan*/  JIFESMW ; 
 int /*<<< orphan*/  JIFESVSZ ; 
 int /*<<< orphan*/  JIFESYA1 ; 
 int /*<<< orphan*/  JINTE ; 
 unsigned int JINTE_ERR ; 
 unsigned int JINTE_TRANSF_COMPL ; 
 unsigned char JPU_JPEG_420 ; 
 unsigned long JPU_JPEG_HDR_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct jpu_ctx*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct jpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct jpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct jpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct jpu*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vb2_v4l2_buffer* FUNC11 (int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC12 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC13 (int /*<<< orphan*/ *,int) ; 
 struct jpu_buffer* FUNC14 (struct vb2_v4l2_buffer*) ; 

__attribute__((used)) static void FUNC15(void *priv)
{
	struct jpu_ctx *ctx = priv;
	struct jpu *jpu = ctx->jpu;
	struct jpu_buffer *jpu_buf;
	struct jpu_q_data *q_data;
	struct vb2_v4l2_buffer *src_buf, *dst_buf;
	unsigned int w, h, bpl;
	unsigned char num_planes, subsampling;
	unsigned long flags;

	/* ...wait until module reset completes; we have mutex locked here */
	if (FUNC7(jpu)) {
		FUNC4(ctx, true);
		return;
	}

	FUNC9(&ctx->jpu->lock, flags);

	jpu->curr = ctx;

	src_buf = FUNC12(ctx->fh.m2m_ctx);
	dst_buf = FUNC11(ctx->fh.m2m_ctx);

	if (ctx->encoder) {
		jpu_buf = FUNC14(dst_buf);
		q_data = &ctx->out_q;
	} else {
		jpu_buf = FUNC14(src_buf);
		q_data = &ctx->cap_q;
	}

	w = q_data->format.width;
	h = q_data->format.height;
	bpl = q_data->format.plane_fmt[0].bytesperline;
	num_planes = q_data->fmtinfo->num_planes;
	subsampling = q_data->fmtinfo->subsampling;

	if (ctx->encoder) {
		unsigned long src_1_addr, src_2_addr, dst_addr;
		unsigned int redu, inft;

		dst_addr = FUNC13(&dst_buf->vb2_buf, 0);
		src_1_addr =
			FUNC13(&src_buf->vb2_buf, 0);
		if (num_planes > 1)
			src_2_addr = FUNC13(
					&src_buf->vb2_buf, 1);
		else
			src_2_addr = src_1_addr + w * h;

		jpu_buf->compr_quality = ctx->compr_quality;

		if (subsampling == JPU_JPEG_420) {
			redu = JCMOD_REDU_420;
			inft = JIFECNT_INFT_420;
		} else {
			redu = JCMOD_REDU_422;
			inft = JIFECNT_INFT_422;
		}

		/* only no marker mode works for encoding */
		FUNC8(jpu, JCMOD_DSP_ENC | JCMOD_PCTR | redu |
			  JCMOD_MSKIP_ENABLE, JCMOD);

		FUNC8(jpu, JIFECNT_SWAP_WB | inft, JIFECNT);
		FUNC8(jpu, JIFDCNT_SWAP_WB, JIFDCNT);
		FUNC8(jpu, JINTE_TRANSF_COMPL, JINTE);

		/* Y and C components source addresses */
		FUNC8(jpu, src_1_addr, JIFESYA1);
		FUNC8(jpu, src_2_addr, JIFESCA1);

		/* memory width */
		FUNC8(jpu, bpl, JIFESMW);

		FUNC8(jpu, (w >> 8) & JCSZ_MASK, JCHSZU);
		FUNC8(jpu, w & JCSZ_MASK, JCHSZD);

		FUNC8(jpu, (h >> 8) & JCSZ_MASK, JCVSZU);
		FUNC8(jpu, h & JCSZ_MASK, JCVSZD);

		FUNC8(jpu, w, JIFESHSZ);
		FUNC8(jpu, h, JIFESVSZ);

		FUNC8(jpu, dst_addr + JPU_JPEG_HDR_SIZE, JIFEDA1);

		FUNC8(jpu, 0 << FUNC2(1) | 1 << FUNC2(2) |
			  1 << FUNC2(3), JCQTN);

		FUNC8(jpu, 0 << FUNC0(1) | 0 << FUNC1(1) |
			  1 << FUNC0(2) | 1 << FUNC1(2) |
			  1 << FUNC0(3) | 1 << FUNC1(3),
			  JCHTN);

		FUNC6(jpu, ctx->compr_quality);
		FUNC5(jpu);
	} else {
		unsigned long src_addr, dst_1_addr, dst_2_addr;

		if (jpu_buf->subsampling != subsampling) {
			FUNC3(ctx->jpu->dev,
				"src and dst formats do not match.\n");
			FUNC10(&ctx->jpu->lock, flags);
			FUNC4(ctx, false);
			return;
		}

		src_addr = FUNC13(&src_buf->vb2_buf, 0);
		dst_1_addr =
			FUNC13(&dst_buf->vb2_buf, 0);
		if (q_data->fmtinfo->num_planes > 1)
			dst_2_addr = FUNC13(
					&dst_buf->vb2_buf, 1);
		else
			dst_2_addr = dst_1_addr + w * h;

		/* ...set up decoder operation */
		FUNC8(jpu, JCMOD_DSP_DEC | JCMOD_PCTR, JCMOD);
		FUNC8(jpu, JIFECNT_SWAP_WB, JIFECNT);
		FUNC8(jpu, JIFDCNT_SWAP_WB, JIFDCNT);

		/* ...enable interrupts on transfer completion and d-g error */
		FUNC8(jpu, JINTE_TRANSF_COMPL | JINTE_ERR, JINTE);

		/* ...set source/destination addresses of encoded data */
		FUNC8(jpu, src_addr, JIFDSA1);
		FUNC8(jpu, dst_1_addr, JIFDDYA1);
		FUNC8(jpu, dst_2_addr, JIFDDCA1);

		FUNC8(jpu, bpl, JIFDDMW);
	}

	/* ...start encoder/decoder operation */
	FUNC8(jpu, JCCMD_JSRT, JCCMD);

	FUNC10(&ctx->jpu->lock, flags);
}