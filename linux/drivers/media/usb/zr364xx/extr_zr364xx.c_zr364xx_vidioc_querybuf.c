
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zr364xx_camera {int vb_vidq; } ;
struct v4l2_buffer {int dummy; } ;
struct file {int dummy; } ;


 struct zr364xx_camera* video_drvdata (struct file*) ;
 int videobuf_querybuf (int *,struct v4l2_buffer*) ;

__attribute__((used)) static int zr364xx_vidioc_querybuf(struct file *file,
    void *priv,
    struct v4l2_buffer *p)
{
 int rc;
 struct zr364xx_camera *cam = video_drvdata(file);
 rc = videobuf_querybuf(&cam->vb_vidq, p);
 return rc;
}
