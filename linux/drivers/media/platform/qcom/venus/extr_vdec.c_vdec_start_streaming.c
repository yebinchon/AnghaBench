
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_inst {int lock; } ;
struct vb2_queue {scalar_t__ type; } ;


 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 int VB2_BUF_STATE_QUEUED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct venus_inst* vb2_get_drv_priv (struct vb2_queue*) ;
 int vdec_start_capture (struct venus_inst*) ;
 int vdec_start_output (struct venus_inst*) ;
 int venus_helper_buffers_done (struct venus_inst*,int ) ;

__attribute__((used)) static int vdec_start_streaming(struct vb2_queue *q, unsigned int count)
{
 struct venus_inst *inst = vb2_get_drv_priv(q);
 int ret;

 mutex_lock(&inst->lock);

 if (q->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE)
  ret = vdec_start_capture(inst);
 else
  ret = vdec_start_output(inst);

 if (ret)
  goto error;

 mutex_unlock(&inst->lock);
 return 0;

error:
 venus_helper_buffers_done(inst, VB2_BUF_STATE_QUEUED);
 mutex_unlock(&inst->lock);
 return ret;
}
