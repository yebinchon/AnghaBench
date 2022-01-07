
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {int dummy; } ;
struct file {int dummy; } ;
struct camif_vp {int vb_queue; } ;


 int vb2_querybuf (int *,struct v4l2_buffer*) ;
 struct camif_vp* video_drvdata (struct file*) ;

__attribute__((used)) static int s3c_camif_querybuf(struct file *file, void *priv,
         struct v4l2_buffer *buf)
{
 struct camif_vp *vp = video_drvdata(file);
 return vb2_querybuf(&vp->vb_queue, buf);
}
