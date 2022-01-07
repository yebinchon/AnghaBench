
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tw5864_input {int reg_emu; int reg_interlacing; int reg_dsp; int reg_dsp_qp; int reg_dsp_ref_mvp_lambda; int reg_dsp_i4x4_weight; scalar_t__ frame_gop_seqno; int tail_nb_bits; int nr; int h264_idr_pic_id; struct tw5864_dev* root; } ;
struct tw5864_dev {int dummy; } ;


 int BIT (int) ;
 int TW5864_CIF_MAP_MD ;
 int TW5864_DSP ;
 int TW5864_DSP_CODEC ;
 int TW5864_DSP_ENC_ORG_PTR_REG ;
 int TW5864_DSP_ENC_ORG_PTR_SHIFT ;
 int TW5864_DSP_ENC_REC ;
 int TW5864_DSP_I4x4_WEIGHT ;
 int TW5864_DSP_INTRA_MODE ;
 int TW5864_DSP_INTRA_MODE_16x16 ;
 int TW5864_DSP_INTRA_MODE_MASK ;
 int TW5864_DSP_INTRA_MODE_SHIFT ;
 int TW5864_DSP_QP ;
 int TW5864_DSP_REF_FRM ;
 int TW5864_DSP_REF_MVP_LAMBDA ;
 int TW5864_EMU ;
 int TW5864_ENC_BUF_PTR_REC1 ;
 int TW5864_HD1_MAP_MD ;
 int TW5864_INTERLACING ;
 int TW5864_INTRA_EN ;
 int TW5864_ME_EN ;
 int TW5864_MOTION_SEARCH_ETC ;
 int TW5864_SLICE ;
 int TW5864_START_NSLICE ;
 int TW5864_VLC ;
 int TW5864_VLC_BIT_ALIGN_SHIFT ;
 int TW5864_VLC_PCI_SEL ;
 int tw5864_prepare_frame_headers (struct tw5864_input*) ;
 int tw_mask_shift_readl (int ,int,int) ;
 int tw_mask_shift_writel (int ,int ,int ,int ) ;
 int tw_setl (int ,int) ;
 int tw_writel (int ,int) ;

void tw5864_request_encoded_frame(struct tw5864_input *input)
{
 struct tw5864_dev *dev = input->root;
 u32 enc_buf_id_new;

 tw_setl(TW5864_DSP_CODEC, TW5864_CIF_MAP_MD | TW5864_HD1_MAP_MD);
 tw_writel(TW5864_EMU, input->reg_emu);
 tw_writel(TW5864_INTERLACING, input->reg_interlacing);
 tw_writel(TW5864_DSP, input->reg_dsp);

 tw_writel(TW5864_DSP_QP, input->reg_dsp_qp);
 tw_writel(TW5864_DSP_REF_MVP_LAMBDA, input->reg_dsp_ref_mvp_lambda);
 tw_writel(TW5864_DSP_I4x4_WEIGHT, input->reg_dsp_i4x4_weight);
 tw_mask_shift_writel(TW5864_DSP_INTRA_MODE, TW5864_DSP_INTRA_MODE_MASK,
        TW5864_DSP_INTRA_MODE_SHIFT,
        TW5864_DSP_INTRA_MODE_16x16);

 if (input->frame_gop_seqno == 0) {

  tw_writel(TW5864_MOTION_SEARCH_ETC, TW5864_INTRA_EN);
  input->h264_idr_pic_id++;
  input->h264_idr_pic_id &= TW5864_DSP_REF_FRM;
 } else {

  tw_writel(TW5864_MOTION_SEARCH_ETC, TW5864_INTRA_EN |
     TW5864_ME_EN | BIT(5) );
 }
 tw5864_prepare_frame_headers(input);
 tw_writel(TW5864_VLC,
    TW5864_VLC_PCI_SEL |
    ((input->tail_nb_bits + 24) << TW5864_VLC_BIT_ALIGN_SHIFT) |
    input->reg_dsp_qp);

 enc_buf_id_new = tw_mask_shift_readl(TW5864_ENC_BUF_PTR_REC1, 0x3,
          2 * input->nr);
 tw_writel(TW5864_DSP_ENC_ORG_PTR_REG,
    enc_buf_id_new << TW5864_DSP_ENC_ORG_PTR_SHIFT);
 tw_writel(TW5864_DSP_ENC_REC,
    enc_buf_id_new << 12 | ((enc_buf_id_new + 3) & 3));

 tw_writel(TW5864_SLICE, TW5864_START_NSLICE);
 tw_writel(TW5864_SLICE, 0);
}
