
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {TYPE_1__* v4l2_dev; } ;
struct vb2_queue {int dummy; } ;
struct v4l2_m2m_ctx {int dummy; } ;
struct v4l2_buffer {int type; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int mdev; } ;


 struct vb2_queue* v4l2_m2m_get_vq (struct v4l2_m2m_ctx*,int ) ;
 int vb2_prepare_buf (struct vb2_queue*,int ,struct v4l2_buffer*) ;
 struct video_device* video_devdata (struct file*) ;

int v4l2_m2m_prepare_buf(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
    struct v4l2_buffer *buf)
{
 struct video_device *vdev = video_devdata(file);
 struct vb2_queue *vq;

 vq = v4l2_m2m_get_vq(m2m_ctx, buf->type);
 return vb2_prepare_buf(vq, vdev->v4l2_dev->mdev, buf);
}
