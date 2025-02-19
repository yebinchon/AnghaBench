
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int dummy; } ;
struct s5p_mfc_ctx {int dec_dst_flag; int inst_no; int dpb_flush_flag; struct s5p_mfc_dev* dev; } ;
typedef enum s5p_mfc_decode_arg { ____Placeholder_s5p_mfc_decode_arg } s5p_mfc_decode_arg ;





 int S5P_FIMV_CH_FRAME_START ;
 int S5P_FIMV_CH_FRAME_START_REALLOC ;
 int S5P_FIMV_CH_LAST_FRAME ;
 int S5P_FIMV_CH_MASK ;
 int S5P_FIMV_CH_SHIFT ;
 int S5P_FIMV_SI_CH0_INST_ID ;
 int S5P_FIMV_SI_CH0_RELEASE_BUF ;
 int mfc_debug (int,char*) ;
 int mfc_write (struct s5p_mfc_dev*,int,int ) ;
 int s5p_mfc_set_flush (struct s5p_mfc_ctx*,int ) ;
 int s5p_mfc_set_shared_buffer (struct s5p_mfc_ctx*) ;

__attribute__((used)) static int s5p_mfc_decode_one_frame_v5(struct s5p_mfc_ctx *ctx,
     enum s5p_mfc_decode_arg last_frame)
{
 struct s5p_mfc_dev *dev = ctx->dev;

 mfc_write(dev, ctx->dec_dst_flag, S5P_FIMV_SI_CH0_RELEASE_BUF);
 s5p_mfc_set_shared_buffer(ctx);
 s5p_mfc_set_flush(ctx, ctx->dpb_flush_flag);


 switch (last_frame) {
 case 130:
  mfc_write(dev, ((S5P_FIMV_CH_FRAME_START & S5P_FIMV_CH_MASK) <<
  S5P_FIMV_CH_SHIFT) | (ctx->inst_no), S5P_FIMV_SI_CH0_INST_ID);
  break;
 case 129:
  mfc_write(dev, ((S5P_FIMV_CH_LAST_FRAME & S5P_FIMV_CH_MASK) <<
  S5P_FIMV_CH_SHIFT) | (ctx->inst_no), S5P_FIMV_SI_CH0_INST_ID);
  break;
 case 128:
  mfc_write(dev, ((S5P_FIMV_CH_FRAME_START_REALLOC &
  S5P_FIMV_CH_MASK) << S5P_FIMV_CH_SHIFT) | (ctx->inst_no),
  S5P_FIMV_SI_CH0_INST_ID);
  break;
 }
 mfc_debug(2, "Decoding a usual frame\n");
 return 0;
}
