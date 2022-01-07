
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_buffer {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_4__ {TYPE_1__* v4l2_dev; } ;
struct camif_vp {TYPE_2__ vdev; int vb_queue; } ;
struct TYPE_3__ {int mdev; } ;


 int vb2_prepare_buf (int *,int ,struct v4l2_buffer*) ;
 struct camif_vp* video_drvdata (struct file*) ;

__attribute__((used)) static int s3c_camif_prepare_buf(struct file *file, void *priv,
     struct v4l2_buffer *b)
{
 struct camif_vp *vp = video_drvdata(file);
 return vb2_prepare_buf(&vp->vb_queue, vp->vdev.v4l2_dev->mdev, b);
}
