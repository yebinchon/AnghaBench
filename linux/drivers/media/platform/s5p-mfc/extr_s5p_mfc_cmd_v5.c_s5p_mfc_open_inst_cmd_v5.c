
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s5p_mfc_dev {int curr_ctx; } ;
struct TYPE_2__ {scalar_t__ size; scalar_t__ ofs; } ;
struct s5p_mfc_ctx {int codec_mode; int state; TYPE_1__ ctx; int num; struct s5p_mfc_dev* dev; } ;
struct s5p_mfc_cmd_args {scalar_t__* arg; } ;


 int MFCINST_ERROR ;
 scalar_t__ S5P_FIMV_CODEC_H263_DEC ;
 scalar_t__ S5P_FIMV_CODEC_H263_ENC ;
 scalar_t__ S5P_FIMV_CODEC_H264_DEC ;
 scalar_t__ S5P_FIMV_CODEC_H264_ENC ;
 scalar_t__ S5P_FIMV_CODEC_MPEG2_DEC ;
 scalar_t__ S5P_FIMV_CODEC_MPEG4_DEC ;
 scalar_t__ S5P_FIMV_CODEC_MPEG4_ENC ;
 scalar_t__ S5P_FIMV_CODEC_NONE ;
 scalar_t__ S5P_FIMV_CODEC_VC1RCV_DEC ;
 scalar_t__ S5P_FIMV_CODEC_VC1_DEC ;
 int S5P_FIMV_H2R_CMD_OPEN_INSTANCE ;
 int memset (struct s5p_mfc_cmd_args*,int ,int) ;
 int mfc_debug (int,char*,int) ;
 int mfc_err (char*) ;
 int s5p_mfc_cmd_host2risc_v5 (struct s5p_mfc_dev*,int ,struct s5p_mfc_cmd_args*) ;

__attribute__((used)) static int s5p_mfc_open_inst_cmd_v5(struct s5p_mfc_ctx *ctx)
{
 struct s5p_mfc_dev *dev = ctx->dev;
 struct s5p_mfc_cmd_args h2r_args;
 int ret;


 mfc_debug(2, "Getting instance number (codec: %d)\n", ctx->codec_mode);
 dev->curr_ctx = ctx->num;
 memset(&h2r_args, 0, sizeof(struct s5p_mfc_cmd_args));
 switch (ctx->codec_mode) {
 case 134:
  h2r_args.arg[0] = S5P_FIMV_CODEC_H264_DEC;
  break;
 case 128:
  h2r_args.arg[0] = S5P_FIMV_CODEC_VC1_DEC;
  break;
 case 131:
  h2r_args.arg[0] = S5P_FIMV_CODEC_MPEG4_DEC;
  break;
 case 132:
  h2r_args.arg[0] = S5P_FIMV_CODEC_MPEG2_DEC;
  break;
 case 136:
  h2r_args.arg[0] = S5P_FIMV_CODEC_H263_DEC;
  break;
 case 129:
  h2r_args.arg[0] = S5P_FIMV_CODEC_VC1RCV_DEC;
  break;
 case 133:
  h2r_args.arg[0] = S5P_FIMV_CODEC_H264_ENC;
  break;
 case 130:
  h2r_args.arg[0] = S5P_FIMV_CODEC_MPEG4_ENC;
  break;
 case 135:
  h2r_args.arg[0] = S5P_FIMV_CODEC_H263_ENC;
  break;
 default:
  h2r_args.arg[0] = S5P_FIMV_CODEC_NONE;
 }
 h2r_args.arg[1] = 0;
 h2r_args.arg[2] = ctx->ctx.ofs;
 h2r_args.arg[3] = ctx->ctx.size;
 ret = s5p_mfc_cmd_host2risc_v5(dev, S5P_FIMV_H2R_CMD_OPEN_INSTANCE,
        &h2r_args);
 if (ret) {
  mfc_err("Failed to create a new instance\n");
  ctx->state = MFCINST_ERROR;
 }
 return ret;
}
