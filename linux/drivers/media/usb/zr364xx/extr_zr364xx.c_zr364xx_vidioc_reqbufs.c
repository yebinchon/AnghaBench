
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zr364xx_camera {void* owner; int vb_vidq; } ;
struct v4l2_requestbuffers {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 struct zr364xx_camera* video_drvdata (struct file*) ;
 int videobuf_reqbufs (int *,struct v4l2_requestbuffers*) ;

__attribute__((used)) static int zr364xx_vidioc_reqbufs(struct file *file, void *priv,
     struct v4l2_requestbuffers *p)
{
 struct zr364xx_camera *cam = video_drvdata(file);

 if (cam->owner && cam->owner != priv)
  return -EBUSY;
 return videobuf_reqbufs(&cam->vb_vidq, p);
}
