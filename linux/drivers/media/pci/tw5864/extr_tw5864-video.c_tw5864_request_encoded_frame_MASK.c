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
typedef  int u32 ;
struct tw5864_input {int reg_emu; int reg_interlacing; int reg_dsp; int reg_dsp_qp; int reg_dsp_ref_mvp_lambda; int reg_dsp_i4x4_weight; scalar_t__ frame_gop_seqno; int tail_nb_bits; int nr; int /*<<< orphan*/  h264_idr_pic_id; struct tw5864_dev* root; } ;
struct tw5864_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int TW5864_CIF_MAP_MD ; 
 int /*<<< orphan*/  TW5864_DSP ; 
 int /*<<< orphan*/  TW5864_DSP_CODEC ; 
 int /*<<< orphan*/  TW5864_DSP_ENC_ORG_PTR_REG ; 
 int TW5864_DSP_ENC_ORG_PTR_SHIFT ; 
 int /*<<< orphan*/  TW5864_DSP_ENC_REC ; 
 int /*<<< orphan*/  TW5864_DSP_I4x4_WEIGHT ; 
 int /*<<< orphan*/  TW5864_DSP_INTRA_MODE ; 
 int /*<<< orphan*/  TW5864_DSP_INTRA_MODE_16x16 ; 
 int /*<<< orphan*/  TW5864_DSP_INTRA_MODE_MASK ; 
 int /*<<< orphan*/  TW5864_DSP_INTRA_MODE_SHIFT ; 
 int /*<<< orphan*/  TW5864_DSP_QP ; 
 int /*<<< orphan*/  TW5864_DSP_REF_FRM ; 
 int /*<<< orphan*/  TW5864_DSP_REF_MVP_LAMBDA ; 
 int /*<<< orphan*/  TW5864_EMU ; 
 int /*<<< orphan*/  TW5864_ENC_BUF_PTR_REC1 ; 
 int TW5864_HD1_MAP_MD ; 
 int /*<<< orphan*/  TW5864_INTERLACING ; 
 int TW5864_INTRA_EN ; 
 int TW5864_ME_EN ; 
 int /*<<< orphan*/  TW5864_MOTION_SEARCH_ETC ; 
 int /*<<< orphan*/  TW5864_SLICE ; 
 int TW5864_START_NSLICE ; 
 int /*<<< orphan*/  TW5864_VLC ; 
 int TW5864_VLC_BIT_ALIGN_SHIFT ; 
 int TW5864_VLC_PCI_SEL ; 
 int /*<<< orphan*/  FUNC1 (struct tw5864_input*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

void FUNC6(struct tw5864_input *input)
{
	struct tw5864_dev *dev = input->root;
	u32 enc_buf_id_new;

	FUNC4(TW5864_DSP_CODEC, TW5864_CIF_MAP_MD | TW5864_HD1_MAP_MD);
	FUNC5(TW5864_EMU, input->reg_emu);
	FUNC5(TW5864_INTERLACING, input->reg_interlacing);
	FUNC5(TW5864_DSP, input->reg_dsp);

	FUNC5(TW5864_DSP_QP, input->reg_dsp_qp);
	FUNC5(TW5864_DSP_REF_MVP_LAMBDA, input->reg_dsp_ref_mvp_lambda);
	FUNC5(TW5864_DSP_I4x4_WEIGHT, input->reg_dsp_i4x4_weight);
	FUNC3(TW5864_DSP_INTRA_MODE, TW5864_DSP_INTRA_MODE_MASK,
			     TW5864_DSP_INTRA_MODE_SHIFT,
			     TW5864_DSP_INTRA_MODE_16x16);

	if (input->frame_gop_seqno == 0) {
		/* Produce I-frame */
		FUNC5(TW5864_MOTION_SEARCH_ETC, TW5864_INTRA_EN);
		input->h264_idr_pic_id++;
		input->h264_idr_pic_id &= TW5864_DSP_REF_FRM;
	} else {
		/* Produce P-frame */
		FUNC5(TW5864_MOTION_SEARCH_ETC, TW5864_INTRA_EN |
			  TW5864_ME_EN | FUNC0(5) /* SRCH_OPT default */);
	}
	FUNC1(input);
	FUNC5(TW5864_VLC,
		  TW5864_VLC_PCI_SEL |
		  ((input->tail_nb_bits + 24) << TW5864_VLC_BIT_ALIGN_SHIFT) |
		  input->reg_dsp_qp);

	enc_buf_id_new = FUNC2(TW5864_ENC_BUF_PTR_REC1, 0x3,
					     2 * input->nr);
	FUNC5(TW5864_DSP_ENC_ORG_PTR_REG,
		  enc_buf_id_new << TW5864_DSP_ENC_ORG_PTR_SHIFT);
	FUNC5(TW5864_DSP_ENC_REC,
		  enc_buf_id_new << 12 | ((enc_buf_id_new + 3) & 3));

	FUNC5(TW5864_SLICE, TW5864_START_NSLICE);
	FUNC5(TW5864_SLICE, 0);
}