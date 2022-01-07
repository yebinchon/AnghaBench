
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_regs {int instance_id; int d_slice_if_enable; int d_available_dpb_flag_lower; } ;
struct s5p_mfc_dev {int mfc_cmds; struct s5p_mfc_regs* mfc_regs; } ;
struct s5p_mfc_ctx {int dec_dst_flag; int slice_interface; int inst_no; struct s5p_mfc_dev* dev; } ;
typedef enum s5p_mfc_decode_arg { ____Placeholder_s5p_mfc_decode_arg } s5p_mfc_decode_arg ;


 int EINVAL ;
 int S5P_FIMV_CH_FRAME_START_V6 ;
 int S5P_FIMV_CH_LAST_FRAME_V6 ;
 int cmd_host2risc ;
 int mfc_debug (int,char*) ;
 int mfc_err (char*) ;
 int s5p_mfc_hw_call (int ,int ,struct s5p_mfc_dev*,int ,int *) ;
 int writel (int,int ) ;

__attribute__((used)) static int s5p_mfc_decode_one_frame_v6(struct s5p_mfc_ctx *ctx,
   enum s5p_mfc_decode_arg last_frame)
{
 struct s5p_mfc_dev *dev = ctx->dev;
 const struct s5p_mfc_regs *mfc_regs = dev->mfc_regs;

 writel(ctx->dec_dst_flag, mfc_regs->d_available_dpb_flag_lower);
 writel(ctx->slice_interface & 0x1, mfc_regs->d_slice_if_enable);

 writel(ctx->inst_no, mfc_regs->instance_id);


 switch (last_frame) {
 case 0:
  s5p_mfc_hw_call(dev->mfc_cmds, cmd_host2risc, dev,
    S5P_FIMV_CH_FRAME_START_V6, ((void*)0));
  break;
 case 1:
  s5p_mfc_hw_call(dev->mfc_cmds, cmd_host2risc, dev,
    S5P_FIMV_CH_LAST_FRAME_V6, ((void*)0));
  break;
 default:
  mfc_err("Unsupported last frame arg.\n");
  return -EINVAL;
 }

 mfc_debug(2, "Decoding a usual frame.\n");
 return 0;
}
