
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_regs {int instance_id; } ;
struct s5p_mfc_dev {int mfc_cmds; int curr_ctx; struct s5p_mfc_regs* mfc_regs; } ;
struct s5p_mfc_ctx {int inst_no; int num; struct s5p_mfc_dev* dev; } ;


 int S5P_FIMV_H2R_CMD_FLUSH_V6 ;
 int cmd_host2risc ;
 int s5p_mfc_hw_call (int ,int ,struct s5p_mfc_dev*,int ,int *) ;
 int writel (int ,int ) ;

__attribute__((used)) static inline void s5p_mfc_set_flush(struct s5p_mfc_ctx *ctx, int flush)
{
 struct s5p_mfc_dev *dev = ctx->dev;
 const struct s5p_mfc_regs *mfc_regs = dev->mfc_regs;

 if (flush) {
  dev->curr_ctx = ctx->num;
  writel(ctx->inst_no, mfc_regs->instance_id);
  s5p_mfc_hw_call(dev->mfc_cmds, cmd_host2risc, dev,
    S5P_FIMV_H2R_CMD_FLUSH_V6, ((void*)0));
 }
}
