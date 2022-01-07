
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct venus_inst {TYPE_1__* core; int fh; int lock; int m2m_dev; int m2m_ctx; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int dev_enc; } ;


 int hfi_session_destroy (struct venus_inst*) ;
 int kfree (struct venus_inst*) ;
 int mutex_destroy (int *) ;
 int pm_runtime_put_sync (int ) ;
 struct venus_inst* to_inst (struct file*) ;
 int v4l2_fh_del (int *) ;
 int v4l2_fh_exit (int *) ;
 int v4l2_m2m_ctx_release (int ) ;
 int v4l2_m2m_release (int ) ;
 int venc_ctrl_deinit (struct venus_inst*) ;

__attribute__((used)) static int venc_close(struct file *file)
{
 struct venus_inst *inst = to_inst(file);

 v4l2_m2m_ctx_release(inst->m2m_ctx);
 v4l2_m2m_release(inst->m2m_dev);
 venc_ctrl_deinit(inst);
 hfi_session_destroy(inst);
 mutex_destroy(&inst->lock);
 v4l2_fh_del(&inst->fh);
 v4l2_fh_exit(&inst->fh);

 pm_runtime_put_sync(inst->core->dev_enc);

 kfree(inst);
 return 0;
}
