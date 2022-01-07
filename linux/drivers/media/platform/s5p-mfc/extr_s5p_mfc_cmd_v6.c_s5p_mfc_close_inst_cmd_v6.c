
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int curr_ctx; } ;
struct s5p_mfc_ctx {scalar_t__ state; int inst_no; int num; struct s5p_mfc_dev* dev; } ;
struct s5p_mfc_cmd_args {int dummy; } ;


 int EINVAL ;
 scalar_t__ MFCINST_FREE ;
 int S5P_FIMV_H2R_CMD_CLOSE_INSTANCE_V6 ;
 int S5P_FIMV_INSTANCE_ID_V6 ;
 int mfc_write (struct s5p_mfc_dev*,int ,int ) ;
 int s5p_mfc_cmd_host2risc_v6 (struct s5p_mfc_dev*,int ,struct s5p_mfc_cmd_args*) ;

__attribute__((used)) static int s5p_mfc_close_inst_cmd_v6(struct s5p_mfc_ctx *ctx)
{
 struct s5p_mfc_dev *dev = ctx->dev;
 struct s5p_mfc_cmd_args h2r_args;
 int ret = 0;

 dev->curr_ctx = ctx->num;
 if (ctx->state != MFCINST_FREE) {
  mfc_write(dev, ctx->inst_no, S5P_FIMV_INSTANCE_ID_V6);
  ret = s5p_mfc_cmd_host2risc_v6(dev,
     S5P_FIMV_H2R_CMD_CLOSE_INSTANCE_V6,
     &h2r_args);
 } else {
  ret = -EINVAL;
 }

 return ret;
}
