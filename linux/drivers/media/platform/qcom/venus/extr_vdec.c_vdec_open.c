
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m2m_ctx; int * ctrl_handler; } ;
struct venus_inst {int num_output_bufs; int m2m_dev; TYPE_1__ fh; int m2m_ctx; int ctrl_handler; int reconf_wait; scalar_t__ buf_count; int codec_state; int session_type; struct venus_core* core; int lock; int list; int internalbufs; int registeredbufs; int dpbbufs; } ;
struct venus_core {int dev_dec; int vdev_dec; } ;
struct file {TYPE_1__* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int VENUS_DEC_STATE_DEINIT ;
 int VIDC_SESSION_TYPE_DEC ;
 int hfi_session_create (struct venus_inst*,int *) ;
 int hfi_session_destroy (struct venus_inst*) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct venus_inst*) ;
 struct venus_inst* kzalloc (int,int ) ;
 int m2m_queue_init ;
 int mutex_init (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int v4l2_fh_add (TYPE_1__*) ;
 int v4l2_fh_init (TYPE_1__*,int ) ;
 int v4l2_m2m_ctx_init (int ,struct venus_inst*,int ) ;
 int v4l2_m2m_init (int *) ;
 int v4l2_m2m_release (int ) ;
 int vdec_ctrl_deinit (struct venus_inst*) ;
 int vdec_ctrl_init (struct venus_inst*) ;
 int vdec_hfi_ops ;
 int vdec_inst_init (struct venus_inst*) ;
 int vdec_m2m_ops ;
 int venus_helper_init_instance (struct venus_inst*) ;
 struct venus_core* video_drvdata (struct file*) ;

__attribute__((used)) static int vdec_open(struct file *file)
{
 struct venus_core *core = video_drvdata(file);
 struct venus_inst *inst;
 int ret;

 inst = kzalloc(sizeof(*inst), GFP_KERNEL);
 if (!inst)
  return -ENOMEM;

 INIT_LIST_HEAD(&inst->dpbbufs);
 INIT_LIST_HEAD(&inst->registeredbufs);
 INIT_LIST_HEAD(&inst->internalbufs);
 INIT_LIST_HEAD(&inst->list);
 mutex_init(&inst->lock);

 inst->core = core;
 inst->session_type = VIDC_SESSION_TYPE_DEC;
 inst->num_output_bufs = 1;
 inst->codec_state = VENUS_DEC_STATE_DEINIT;
 inst->buf_count = 0;
 init_waitqueue_head(&inst->reconf_wait);
 venus_helper_init_instance(inst);

 ret = pm_runtime_get_sync(core->dev_dec);
 if (ret < 0)
  goto err_free_inst;

 ret = vdec_ctrl_init(inst);
 if (ret)
  goto err_put_sync;

 ret = hfi_session_create(inst, &vdec_hfi_ops);
 if (ret)
  goto err_ctrl_deinit;

 vdec_inst_init(inst);





 inst->m2m_dev = v4l2_m2m_init(&vdec_m2m_ops);
 if (IS_ERR(inst->m2m_dev)) {
  ret = PTR_ERR(inst->m2m_dev);
  goto err_session_destroy;
 }

 inst->m2m_ctx = v4l2_m2m_ctx_init(inst->m2m_dev, inst, m2m_queue_init);
 if (IS_ERR(inst->m2m_ctx)) {
  ret = PTR_ERR(inst->m2m_ctx);
  goto err_m2m_release;
 }

 v4l2_fh_init(&inst->fh, core->vdev_dec);

 inst->fh.ctrl_handler = &inst->ctrl_handler;
 v4l2_fh_add(&inst->fh);
 inst->fh.m2m_ctx = inst->m2m_ctx;
 file->private_data = &inst->fh;

 return 0;

err_m2m_release:
 v4l2_m2m_release(inst->m2m_dev);
err_session_destroy:
 hfi_session_destroy(inst);
err_ctrl_deinit:
 vdec_ctrl_deinit(inst);
err_put_sync:
 pm_runtime_put_sync(core->dev_dec);
err_free_inst:
 kfree(inst);
 return ret;
}
