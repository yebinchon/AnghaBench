
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct s5p_mfc_regs {int e_metadata_buffer_size; int e_metadata_buffer_addr; int e_min_bit_count; int e_max_bit_count; int e_bit_count_enable; int e_picture_tag; int e_rc_roi_ctrl; int e_param_change; int e_roi_buffer_addr; int e_frame_insertion; int e_mv_ver_range; int e_mv_hor_range; int e_rc_config; int e_enc_options; int e_rc_mode; int e_rc_bit_rate; int e_padding_ctrl; int pixel_format; int e_ir_size; int e_gop_config; int e_frame_crop_offset; int e_cropped_frame_height; int e_cropped_frame_width; int e_frame_height; int e_frame_width; } ;
struct s5p_mfc_enc_params {int gop_size; scalar_t__ slice_mode; int intra_refresh_mb; int pad_cr; int pad_cb; int pad_luma; int rc_frame; int rc_bitrate; scalar_t__ rc_reaction_coeff; int seq_hdr_mode; int frame_skip_mode; unsigned int mv_h_range; unsigned int mv_v_range; scalar_t__ pad; int slice_bit; int slice_mb; } ;
struct s5p_mfc_dev {struct s5p_mfc_regs* mfc_regs; } ;
struct TYPE_3__ {int bits; int mb; } ;
struct s5p_mfc_ctx {int img_width; int img_height; scalar_t__ slice_mode; TYPE_2__* src_fmt; TYPE_1__ slice_size; struct s5p_mfc_enc_params enc_params; struct s5p_mfc_dev* dev; } ;
struct TYPE_4__ {scalar_t__ fourcc; } ;


 unsigned int S5P_FIMV_E_MV_RANGE_V6_MASK ;
 scalar_t__ TIGHT_CBR_MAX ;
 scalar_t__ V4L2_MPEG_VIDEO_MULTI_SLICE_MODE_MAX_BYTES ;
 scalar_t__ V4L2_MPEG_VIDEO_MULTI_SLICE_MODE_MAX_MB ;
 scalar_t__ V4L2_PIX_FMT_NV12M ;
 scalar_t__ V4L2_PIX_FMT_NV12MT_16X16 ;
 scalar_t__ V4L2_PIX_FMT_NV21M ;
 int mfc_debug_enter () ;
 int mfc_debug_leave () ;
 unsigned int readl (int ) ;
 int s5p_mfc_set_slice_mode (struct s5p_mfc_ctx*) ;
 int writel (int,int ) ;

__attribute__((used)) static int s5p_mfc_set_enc_params(struct s5p_mfc_ctx *ctx)
{
 struct s5p_mfc_dev *dev = ctx->dev;
 const struct s5p_mfc_regs *mfc_regs = dev->mfc_regs;
 struct s5p_mfc_enc_params *p = &ctx->enc_params;
 unsigned int reg = 0;

 mfc_debug_enter();


 writel(ctx->img_width, mfc_regs->e_frame_width);

 writel(ctx->img_height, mfc_regs->e_frame_height);


 writel(ctx->img_width, mfc_regs->e_cropped_frame_width);

 writel(ctx->img_height, mfc_regs->e_cropped_frame_height);

 writel(0x0, mfc_regs->e_frame_crop_offset);


 reg = 0;
 reg |= p->gop_size & 0xFFFF;
 writel(reg, mfc_regs->e_gop_config);



 ctx->slice_mode = p->slice_mode;
 reg = 0;
 if (p->slice_mode == V4L2_MPEG_VIDEO_MULTI_SLICE_MODE_MAX_MB) {
  reg |= (0x1 << 3);
  writel(reg, mfc_regs->e_enc_options);
  ctx->slice_size.mb = p->slice_mb;
 } else if (p->slice_mode == V4L2_MPEG_VIDEO_MULTI_SLICE_MODE_MAX_BYTES) {
  reg |= (0x1 << 3);
  writel(reg, mfc_regs->e_enc_options);
  ctx->slice_size.bits = p->slice_bit;
 } else {
  reg &= ~(0x1 << 3);
  writel(reg, mfc_regs->e_enc_options);
 }

 s5p_mfc_set_slice_mode(ctx);


 writel(p->intra_refresh_mb, mfc_regs->e_ir_size);
 reg = readl(mfc_regs->e_enc_options);
 if (p->intra_refresh_mb == 0)
  reg &= ~(0x1 << 4);
 else
  reg |= (0x1 << 4);
 writel(reg, mfc_regs->e_enc_options);


 reg = readl(mfc_regs->e_enc_options);
 reg &= ~(0x1 << 9);
 writel(reg, mfc_regs->e_enc_options);


 if (ctx->src_fmt->fourcc == V4L2_PIX_FMT_NV12M) {

  reg = readl(mfc_regs->e_enc_options);
  reg &= ~(0x1 << 7);
  writel(reg, mfc_regs->e_enc_options);

  writel(0x0, mfc_regs->pixel_format);
 } else if (ctx->src_fmt->fourcc == V4L2_PIX_FMT_NV21M) {

  reg = readl(mfc_regs->e_enc_options);
  reg &= ~(0x1 << 7);
  writel(reg, mfc_regs->e_enc_options);

  writel(0x1, mfc_regs->pixel_format);
 } else if (ctx->src_fmt->fourcc == V4L2_PIX_FMT_NV12MT_16X16) {

  reg = readl(mfc_regs->e_enc_options);
  reg |= (0x1 << 7);
  writel(reg, mfc_regs->e_enc_options);

  writel(0x0, mfc_regs->pixel_format);
 }



 reg = readl(mfc_regs->e_enc_options);
 reg |= (0x1 << 8);
 writel(reg, mfc_regs->e_enc_options);


 writel(0x0, mfc_regs->e_padding_ctrl);
 if (p->pad) {
  reg = 0;

  reg |= (1UL << 31);

  reg |= ((p->pad_cr & 0xFF) << 16);

  reg |= ((p->pad_cb & 0xFF) << 8);

  reg |= p->pad_luma & 0xFF;
  writel(reg, mfc_regs->e_padding_ctrl);
 }


 reg = 0;

 reg |= ((p->rc_frame & 0x1) << 9);
 writel(reg, mfc_regs->e_rc_config);


 if (p->rc_frame)
  writel(p->rc_bitrate,
   mfc_regs->e_rc_bit_rate);
 else
  writel(1, mfc_regs->e_rc_bit_rate);


 if (p->rc_frame) {
  if (p->rc_reaction_coeff < TIGHT_CBR_MAX)
   writel(1, mfc_regs->e_rc_mode);
  else
   writel(2, mfc_regs->e_rc_mode);
 }


 reg = readl(mfc_regs->e_enc_options);
 reg &= ~(0x1 << 2);
 reg |= ((p->seq_hdr_mode & 0x1) << 2);


 reg &= ~(0x3);
 reg |= (p->frame_skip_mode & 0x3);
 writel(reg, mfc_regs->e_enc_options);


 reg = readl(mfc_regs->e_rc_config);
 reg &= ~(0x1 << 10);
 writel(reg, mfc_regs->e_rc_config);


 reg = (p->mv_h_range & S5P_FIMV_E_MV_RANGE_V6_MASK);
 writel(reg, mfc_regs->e_mv_hor_range);

 reg = (p->mv_v_range & S5P_FIMV_E_MV_RANGE_V6_MASK);
 writel(reg, mfc_regs->e_mv_ver_range);

 writel(0x0, mfc_regs->e_frame_insertion);
 writel(0x0, mfc_regs->e_roi_buffer_addr);
 writel(0x0, mfc_regs->e_param_change);
 writel(0x0, mfc_regs->e_rc_roi_ctrl);
 writel(0x0, mfc_regs->e_picture_tag);

 writel(0x0, mfc_regs->e_bit_count_enable);
 writel(0x0, mfc_regs->e_max_bit_count);
 writel(0x0, mfc_regs->e_min_bit_count);

 writel(0x0, mfc_regs->e_metadata_buffer_addr);
 writel(0x0, mfc_regs->e_metadata_buffer_size);

 mfc_debug_leave();

 return 0;
}
