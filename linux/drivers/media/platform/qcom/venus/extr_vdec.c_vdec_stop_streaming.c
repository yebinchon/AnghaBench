
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_inst {int lock; scalar_t__ streamon_cap; scalar_t__ streamon_out; } ;
struct vb2_queue {scalar_t__ type; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 int VB2_BUF_STATE_ERROR ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct venus_inst* vb2_get_drv_priv (struct vb2_queue*) ;
 int vdec_stop_capture (struct venus_inst*) ;
 int vdec_stop_output (struct venus_inst*) ;
 int venus_helper_buffers_done (struct venus_inst*,int ) ;

__attribute__((used)) static void vdec_stop_streaming(struct vb2_queue *q)
{
 struct venus_inst *inst = vb2_get_drv_priv(q);
 int ret = -EINVAL;

 mutex_lock(&inst->lock);

 if (q->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE)
  ret = vdec_stop_capture(inst);
 else
  ret = vdec_stop_output(inst);

 venus_helper_buffers_done(inst, VB2_BUF_STATE_ERROR);

 if (ret)
  goto unlock;

 if (q->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
  inst->streamon_out = 0;
 else
  inst->streamon_cap = 0;

unlock:
 mutex_unlock(&inst->lock);
}
