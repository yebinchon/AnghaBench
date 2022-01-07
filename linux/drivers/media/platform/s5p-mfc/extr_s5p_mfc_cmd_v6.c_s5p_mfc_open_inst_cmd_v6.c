
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s5p_mfc_dev {int curr_ctx; } ;
struct TYPE_2__ {int dma; int size; } ;
struct s5p_mfc_ctx {int codec_mode; TYPE_1__ ctx; int num; struct s5p_mfc_dev* dev; } ;
struct s5p_mfc_cmd_args {int dummy; } ;


 int S5P_FIMV_CODEC_H263_DEC_V6 ;
 int S5P_FIMV_CODEC_H263_ENC_V6 ;
 int S5P_FIMV_CODEC_H264_DEC_V6 ;
 int S5P_FIMV_CODEC_H264_ENC_V6 ;
 int S5P_FIMV_CODEC_H264_MVC_DEC_V6 ;
 int S5P_FIMV_CODEC_H264_MVC_ENC_V6 ;
 int S5P_FIMV_CODEC_HEVC_DEC ;
 int S5P_FIMV_CODEC_HEVC_ENC ;
 int S5P_FIMV_CODEC_MPEG2_DEC_V6 ;
 int S5P_FIMV_CODEC_MPEG4_DEC_V6 ;
 int S5P_FIMV_CODEC_MPEG4_ENC_V6 ;
 int S5P_FIMV_CODEC_NONE_V6 ;
 int S5P_FIMV_CODEC_TYPE_V6 ;
 int S5P_FIMV_CODEC_VC1RCV_DEC_V6 ;
 int S5P_FIMV_CODEC_VC1_DEC_V6 ;
 int S5P_FIMV_CODEC_VP8_DEC_V6 ;
 int S5P_FIMV_CODEC_VP8_ENC_V7 ;
 int S5P_FIMV_CODEC_VP9_DEC ;
 int S5P_FIMV_CONTEXT_MEM_ADDR_V6 ;
 int S5P_FIMV_CONTEXT_MEM_SIZE_V6 ;
 int S5P_FIMV_D_CRC_CTRL_V6 ;
 int S5P_FIMV_H2R_CMD_OPEN_INSTANCE_V6 ;
 int mfc_debug (int,char*,int) ;
 int mfc_write (struct s5p_mfc_dev*,int,int ) ;
 int s5p_mfc_cmd_host2risc_v6 (struct s5p_mfc_dev*,int ,struct s5p_mfc_cmd_args*) ;

__attribute__((used)) static int s5p_mfc_open_inst_cmd_v6(struct s5p_mfc_ctx *ctx)
{
 struct s5p_mfc_dev *dev = ctx->dev;
 struct s5p_mfc_cmd_args h2r_args;
 int codec_type;

 mfc_debug(2, "Requested codec mode: %d\n", ctx->codec_mode);
 dev->curr_ctx = ctx->num;
 switch (ctx->codec_mode) {
 case 141:
  codec_type = S5P_FIMV_CODEC_H264_DEC_V6;
  break;
 case 139:
  codec_type = S5P_FIMV_CODEC_H264_MVC_DEC_V6;
  break;
 case 131:
  codec_type = S5P_FIMV_CODEC_VC1_DEC_V6;
  break;
 case 134:
  codec_type = S5P_FIMV_CODEC_MPEG4_DEC_V6;
  break;
 case 135:
  codec_type = S5P_FIMV_CODEC_MPEG2_DEC_V6;
  break;
 case 143:
  codec_type = S5P_FIMV_CODEC_H263_DEC_V6;
  break;
 case 132:
  codec_type = S5P_FIMV_CODEC_VC1RCV_DEC_V6;
  break;
 case 130:
  codec_type = S5P_FIMV_CODEC_VP8_DEC_V6;
  break;
 case 137:
  codec_type = S5P_FIMV_CODEC_HEVC_DEC;
  break;
 case 128:
  codec_type = S5P_FIMV_CODEC_VP9_DEC;
  break;
 case 140:
  codec_type = S5P_FIMV_CODEC_H264_ENC_V6;
  break;
 case 138:
  codec_type = S5P_FIMV_CODEC_H264_MVC_ENC_V6;
  break;
 case 133:
  codec_type = S5P_FIMV_CODEC_MPEG4_ENC_V6;
  break;
 case 142:
  codec_type = S5P_FIMV_CODEC_H263_ENC_V6;
  break;
 case 129:
  codec_type = S5P_FIMV_CODEC_VP8_ENC_V7;
  break;
 case 136:
  codec_type = S5P_FIMV_CODEC_HEVC_ENC;
  break;
 default:
  codec_type = S5P_FIMV_CODEC_NONE_V6;
 }
 mfc_write(dev, codec_type, S5P_FIMV_CODEC_TYPE_V6);
 mfc_write(dev, ctx->ctx.dma, S5P_FIMV_CONTEXT_MEM_ADDR_V6);
 mfc_write(dev, ctx->ctx.size, S5P_FIMV_CONTEXT_MEM_SIZE_V6);
 mfc_write(dev, 0, S5P_FIMV_D_CRC_CTRL_V6);

 return s5p_mfc_cmd_host2risc_v6(dev, S5P_FIMV_H2R_CMD_OPEN_INSTANCE_V6,
     &h2r_args);
}
