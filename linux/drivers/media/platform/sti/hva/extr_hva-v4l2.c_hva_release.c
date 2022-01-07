
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hva_enc {int (* close ) (struct hva_ctx*) ;int name; } ;
struct hva_dev {int nb_of_instances; int ** instances; } ;
struct TYPE_3__ {int m2m_ctx; } ;
struct hva_ctx {size_t id; int name; TYPE_1__ fh; int ctrl_handler; struct hva_enc* enc; } ;
struct file {int private_data; } ;
struct device {int dummy; } ;


 struct device* ctx_to_dev (struct hva_ctx*) ;
 struct hva_dev* ctx_to_hdev (struct hva_ctx*) ;
 int dev_dbg (struct device*,char*,int ,int ) ;
 int dev_info (struct device*,char*,int ) ;
 struct hva_ctx* fh_to_ctx (int ) ;
 int hva_dbg_ctx_remove (struct hva_ctx*) ;
 int hva_dbg_summary (struct hva_ctx*) ;
 int kfree (struct hva_ctx*) ;
 int stub1 (struct hva_ctx*) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_fh_del (TYPE_1__*) ;
 int v4l2_fh_exit (TYPE_1__*) ;
 int v4l2_m2m_ctx_release (int ) ;

__attribute__((used)) static int hva_release(struct file *file)
{
 struct hva_ctx *ctx = fh_to_ctx(file->private_data);
 struct hva_dev *hva = ctx_to_hdev(ctx);
 struct device *dev = ctx_to_dev(ctx);
 const struct hva_enc *enc = ctx->enc;

 if (enc) {
  dev_dbg(dev, "%s %s encoder closed\n", ctx->name, enc->name);
  enc->close(ctx);
  ctx->enc = ((void*)0);


  hva->instances[ctx->id] = ((void*)0);
  hva->nb_of_instances--;
 }


 hva_dbg_summary(ctx);

 v4l2_m2m_ctx_release(ctx->fh.m2m_ctx);

 v4l2_ctrl_handler_free(&ctx->ctrl_handler);

 v4l2_fh_del(&ctx->fh);
 v4l2_fh_exit(&ctx->fh);





 dev_info(dev, "%s encoder instance released\n", ctx->name);

 kfree(ctx);

 return 0;
}
