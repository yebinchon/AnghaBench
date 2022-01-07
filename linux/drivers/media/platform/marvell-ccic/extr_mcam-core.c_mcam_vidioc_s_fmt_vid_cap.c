
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct mcam_format_struct {int mbus_code; } ;
struct mcam_camera {scalar_t__ state; scalar_t__ buffer_mode; int mbus_code; TYPE_1__ pix_format; int vb_queue; } ;
struct file {int dummy; } ;


 scalar_t__ B_vmalloc ;
 int EBUSY ;
 scalar_t__ S_IDLE ;
 int mcam_check_dma_buffers (struct mcam_camera*) ;
 struct mcam_format_struct* mcam_find_format (int ) ;
 int mcam_set_config_needed (struct mcam_camera*,int) ;
 int mcam_vidioc_try_fmt_vid_cap (struct file*,void*,struct v4l2_format*) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct mcam_camera* video_drvdata (struct file*) ;

__attribute__((used)) static int mcam_vidioc_s_fmt_vid_cap(struct file *filp, void *priv,
  struct v4l2_format *fmt)
{
 struct mcam_camera *cam = video_drvdata(filp);
 struct mcam_format_struct *f;
 int ret;





 if (cam->state != S_IDLE || vb2_is_busy(&cam->vb_queue))
  return -EBUSY;

 f = mcam_find_format(fmt->fmt.pix.pixelformat);




 ret = mcam_vidioc_try_fmt_vid_cap(filp, priv, fmt);
 if (ret)
  return ret;




 cam->pix_format = fmt->fmt.pix;
 cam->mbus_code = f->mbus_code;




 if (cam->buffer_mode == B_vmalloc) {
  ret = mcam_check_dma_buffers(cam);
  if (ret)
   goto out;
 }
 mcam_set_config_needed(cam, 1);
out:
 return ret;
}
