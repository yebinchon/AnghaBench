
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int curr_ctx; } ;
struct s5p_mfc_ctx {scalar_t__ state; int inst_no; int num; struct s5p_mfc_dev* dev; } ;
struct s5p_mfc_cmd_args {int * arg; } ;


 int EINVAL ;
 void* MFCINST_ERROR ;
 scalar_t__ MFCINST_FREE ;
 int S5P_FIMV_H2R_CMD_CLOSE_INSTANCE ;
 int memset (struct s5p_mfc_cmd_args*,int ,int) ;
 int mfc_debug (int,char*,int ) ;
 int mfc_err (char*) ;
 int s5p_mfc_cmd_host2risc_v5 (struct s5p_mfc_dev*,int ,struct s5p_mfc_cmd_args*) ;

__attribute__((used)) static int s5p_mfc_close_inst_cmd_v5(struct s5p_mfc_ctx *ctx)
{
 struct s5p_mfc_dev *dev = ctx->dev;
 struct s5p_mfc_cmd_args h2r_args;
 int ret;

 if (ctx->state == MFCINST_FREE) {
  mfc_err("Instance already returned\n");
  ctx->state = MFCINST_ERROR;
  return -EINVAL;
 }

 mfc_debug(2, "Returning instance number %d\n", ctx->inst_no);
 dev->curr_ctx = ctx->num;
 memset(&h2r_args, 0, sizeof(struct s5p_mfc_cmd_args));
 h2r_args.arg[0] = ctx->inst_no;
 ret = s5p_mfc_cmd_host2risc_v5(dev, S5P_FIMV_H2R_CMD_CLOSE_INSTANCE,
        &h2r_args);
 if (ret) {
  mfc_err("Failed to return an instance\n");
  ctx->state = MFCINST_ERROR;
  return -EINVAL;
 }
 return 0;
}
