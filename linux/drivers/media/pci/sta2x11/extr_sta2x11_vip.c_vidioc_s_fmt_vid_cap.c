
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int field; int height; int width; } ;
struct TYPE_3__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct sta2x11_vip {int slock; int v4l2_dev; TYPE_2__ format; int vb_vidq; } ;
struct file {int dummy; } ;


 int DVP_BFO ;
 int DVP_BFS ;
 int DVP_TFO ;
 int DVP_TFS ;
 int DVP_VMP ;
 int EBUSY ;
 int EINVAL ;



 int reg_write (struct sta2x11_vip*,int ,unsigned int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int v4l2_err (int *,char*) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct sta2x11_vip* video_drvdata (struct file*) ;
 int vidioc_try_fmt_vid_cap (struct file*,void*,struct v4l2_format*) ;

__attribute__((used)) static int vidioc_s_fmt_vid_cap(struct file *file, void *priv,
    struct v4l2_format *f)
{
 struct sta2x11_vip *vip = video_drvdata(file);
 unsigned int t_stop, b_stop, pitch;
 int ret;

 ret = vidioc_try_fmt_vid_cap(file, priv, f);
 if (ret)
  return ret;

 if (vb2_is_busy(&vip->vb_vidq)) {

  v4l2_err(&vip->v4l2_dev, "device busy\n");
  return -EBUSY;
 }
 vip->format = f->fmt.pix;
 switch (vip->format.field) {
 case 129:
  t_stop = ((vip->format.height / 2 - 1) << 16) |
    (2 * vip->format.width - 1);
  b_stop = t_stop;
  pitch = 4 * vip->format.width;
  break;
 case 128:
  t_stop = ((vip->format.height - 1) << 16) |
    (2 * vip->format.width - 1);
  b_stop = (0 << 16) | (2 * vip->format.width - 1);
  pitch = 2 * vip->format.width;
  break;
 case 130:
  t_stop = (0 << 16) | (2 * vip->format.width - 1);
  b_stop = (vip->format.height << 16) |
    (2 * vip->format.width - 1);
  pitch = 2 * vip->format.width;
  break;
 default:
  v4l2_err(&vip->v4l2_dev, "unknown field format\n");
  return -EINVAL;
 }

 spin_lock_irq(&vip->slock);

 reg_write(vip, DVP_TFO, 0);

 reg_write(vip, DVP_BFO, 0);

 reg_write(vip, DVP_TFS, t_stop);

 reg_write(vip, DVP_BFS, b_stop);

 reg_write(vip, DVP_VMP, pitch);
 spin_unlock_irq(&vip->slock);

 return 0;
}
