
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_inst {int streamon_out; int streamon_cap; int lock; int registeredbufs; scalar_t__ session_error; struct venus_core* core; } ;
struct venus_core {scalar_t__ sys_error; } ;
struct vb2_queue {scalar_t__ type; } ;


 int EIO ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 int VB2_BUF_STATE_ERROR ;
 int hfi_session_abort (struct venus_inst*) ;
 int hfi_session_deinit (struct venus_inst*) ;
 int hfi_session_stop (struct venus_inst*) ;
 int hfi_session_unload_res (struct venus_inst*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct venus_inst* vb2_get_drv_priv (struct vb2_queue*) ;
 int venus_helper_buffers_done (struct venus_inst*,int ) ;
 int venus_helper_free_dpb_bufs (struct venus_inst*) ;
 int venus_helper_intbufs_free (struct venus_inst*) ;
 int venus_helper_load_scale_clocks (struct venus_core*) ;
 int venus_helper_unregister_bufs (struct venus_inst*) ;

void venus_helper_vb2_stop_streaming(struct vb2_queue *q)
{
 struct venus_inst *inst = vb2_get_drv_priv(q);
 struct venus_core *core = inst->core;
 int ret;

 mutex_lock(&inst->lock);

 if (inst->streamon_out & inst->streamon_cap) {
  ret = hfi_session_stop(inst);
  ret |= hfi_session_unload_res(inst);
  ret |= venus_helper_unregister_bufs(inst);
  ret |= venus_helper_intbufs_free(inst);
  ret |= hfi_session_deinit(inst);

  if (inst->session_error || core->sys_error)
   ret = -EIO;

  if (ret)
   hfi_session_abort(inst);

  venus_helper_free_dpb_bufs(inst);

  venus_helper_load_scale_clocks(core);
  INIT_LIST_HEAD(&inst->registeredbufs);
 }

 venus_helper_buffers_done(inst, VB2_BUF_STATE_ERROR);

 if (q->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
  inst->streamon_out = 0;
 else
  inst->streamon_cap = 0;

 mutex_unlock(&inst->lock);
}
