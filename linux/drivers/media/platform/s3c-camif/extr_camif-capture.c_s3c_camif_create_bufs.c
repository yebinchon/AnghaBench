
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_create_buffers {int count; } ;
struct file {int dummy; } ;
struct camif_vp {void* owner; int vb_queue; } ;


 int EBUSY ;
 int max_t (int ,int,int ) ;
 int u32 ;
 int vb2_create_bufs (int *,struct v4l2_create_buffers*) ;
 struct camif_vp* video_drvdata (struct file*) ;

__attribute__((used)) static int s3c_camif_create_bufs(struct file *file, void *priv,
     struct v4l2_create_buffers *create)
{
 struct camif_vp *vp = video_drvdata(file);
 int ret;

 if (vp->owner && vp->owner != priv)
  return -EBUSY;

 create->count = max_t(u32, 1, create->count);
 ret = vb2_create_bufs(&vp->vb_queue, create);

 if (!ret && vp->owner == ((void*)0))
  vp->owner = priv;

 return ret;
}
