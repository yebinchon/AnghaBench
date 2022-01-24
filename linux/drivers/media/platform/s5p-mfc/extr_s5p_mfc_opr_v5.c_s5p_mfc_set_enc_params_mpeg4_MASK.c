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
struct s5p_mfc_mpeg4_enc_params {int level; unsigned int profile; unsigned int quarter_pixel; int rc_b_frame_qp; int rc_p_frame_qp; unsigned int rc_frame_qp; int rc_max_qp; unsigned int rc_min_qp; } ;
struct TYPE_2__ {struct s5p_mfc_mpeg4_enc_params mpeg4; } ;
struct s5p_mfc_enc_params {int num_b_frame; int rc_framerate_denom; int rc_framerate_num; scalar_t__ frame_skip_mode; int vbv_size; scalar_t__ rc_frame; TYPE_1__ codec; } ;
struct s5p_mfc_dev {int dummy; } ;
struct s5p_mfc_ctx {struct s5p_mfc_enc_params enc_params; struct s5p_mfc_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT_ENC_CONTROL ; 
 int /*<<< orphan*/  P_B_FRAME_QP ; 
 int /*<<< orphan*/  RC_VOP_TIMING ; 
 int /*<<< orphan*/  S5P_FIMV_ENC_MPEG4_QUART_PXL ; 
 int /*<<< orphan*/  S5P_FIMV_ENC_PIC_TYPE_CTRL ; 
 int /*<<< orphan*/  S5P_FIMV_ENC_PROFILE ; 
 int /*<<< orphan*/  S5P_FIMV_ENC_RC_CONFIG ; 
 int /*<<< orphan*/  S5P_FIMV_ENC_RC_FRAME_RATE ; 
 int /*<<< orphan*/  S5P_FIMV_ENC_RC_QBOUND ; 
 scalar_t__ V4L2_MPEG_MFC51_VIDEO_FRAME_SKIP_MODE_BUF_LIMIT ; 
 unsigned int FUNC0 (struct s5p_mfc_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct s5p_mfc_dev*,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct s5p_mfc_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct s5p_mfc_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct s5p_mfc_ctx*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct s5p_mfc_ctx *ctx)
{
	struct s5p_mfc_dev *dev = ctx->dev;
	struct s5p_mfc_enc_params *p = &ctx->enc_params;
	struct s5p_mfc_mpeg4_enc_params *p_mpeg4 = &p->codec.mpeg4;
	unsigned int reg;
	unsigned int shm;
	unsigned int framerate;

	FUNC3(ctx);
	/* pictype : number of B */
	reg = FUNC0(dev, S5P_FIMV_ENC_PIC_TYPE_CTRL);
	/* num_b_frame - 0 ~ 2 */
	reg &= ~(0x3 << 16);
	reg |= (p->num_b_frame << 16);
	FUNC1(dev, reg, S5P_FIMV_ENC_PIC_TYPE_CTRL);
	/* profile & level */
	reg = FUNC0(dev, S5P_FIMV_ENC_PROFILE);
	/* level */
	reg &= ~(0xFF << 8);
	reg |= (p_mpeg4->level << 8);
	/* profile - 0 ~ 2 */
	reg &= ~(0x3F);
	reg |= p_mpeg4->profile;
	FUNC1(dev, reg, S5P_FIMV_ENC_PROFILE);
	/* quarter_pixel */
	FUNC1(dev, p_mpeg4->quarter_pixel, S5P_FIMV_ENC_MPEG4_QUART_PXL);
	/* qp */
	if (!p->rc_frame) {
		shm = FUNC2(ctx, P_B_FRAME_QP);
		shm &= ~(0xFFF);
		shm |= ((p_mpeg4->rc_b_frame_qp & 0x3F) << 6);
		shm |= (p_mpeg4->rc_p_frame_qp & 0x3F);
		FUNC4(ctx, shm, P_B_FRAME_QP);
	}
	/* frame rate */
	if (p->rc_frame) {
		if (p->rc_framerate_denom > 0) {
			framerate = p->rc_framerate_num * 1000 /
						p->rc_framerate_denom;
			FUNC1(dev, framerate,
				S5P_FIMV_ENC_RC_FRAME_RATE);
			shm = FUNC2(ctx, RC_VOP_TIMING);
			shm &= ~(0xFFFFFFFF);
			shm |= (1UL << 31);
			shm |= ((p->rc_framerate_num & 0x7FFF) << 16);
			shm |= (p->rc_framerate_denom & 0xFFFF);
			FUNC4(ctx, shm, RC_VOP_TIMING);
		}
	} else {
		FUNC1(dev, 0, S5P_FIMV_ENC_RC_FRAME_RATE);
	}
	/* rate control config. */
	reg = FUNC0(dev, S5P_FIMV_ENC_RC_CONFIG);
	/* frame QP */
	reg &= ~(0x3F);
	reg |= p_mpeg4->rc_frame_qp;
	FUNC1(dev, reg, S5P_FIMV_ENC_RC_CONFIG);
	/* max & min value of QP */
	reg = FUNC0(dev, S5P_FIMV_ENC_RC_QBOUND);
	/* max QP */
	reg &= ~(0x3F << 8);
	reg |= (p_mpeg4->rc_max_qp << 8);
	/* min QP */
	reg &= ~(0x3F);
	reg |= p_mpeg4->rc_min_qp;
	FUNC1(dev, reg, S5P_FIMV_ENC_RC_QBOUND);
	/* extended encoder ctrl */
	shm = FUNC2(ctx, EXT_ENC_CONTROL);
	/* vbv buffer size */
	if (p->frame_skip_mode ==
			V4L2_MPEG_MFC51_VIDEO_FRAME_SKIP_MODE_BUF_LIMIT) {
		shm &= ~(0xFFFF << 16);
		shm |= (p->vbv_size << 16);
	}
	FUNC4(ctx, shm, EXT_ENC_CONTROL);
	return 0;
}