
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_buffer {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_4__ {TYPE_1__* v4l2_dev; } ;
struct camif_vp {void* owner; TYPE_2__ vdev; int vb_queue; int id; } ;
struct TYPE_3__ {int mdev; } ;


 int EBUSY ;
 int pr_debug (char*,int ) ;
 int vb2_qbuf (int *,int ,struct v4l2_buffer*) ;
 struct camif_vp* video_drvdata (struct file*) ;

__attribute__((used)) static int s3c_camif_qbuf(struct file *file, void *priv,
     struct v4l2_buffer *buf)
{
 struct camif_vp *vp = video_drvdata(file);

 pr_debug("[vp%d]\n", vp->id);

 if (vp->owner && vp->owner != priv)
  return -EBUSY;

 return vb2_qbuf(&vp->vb_queue, vp->vdev.v4l2_dev->mdev, buf);
}
