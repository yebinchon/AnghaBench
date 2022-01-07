
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {int dummy; } ;
struct file {int f_flags; } ;
struct camif_vp {void* owner; int vb_queue; int frame_sequence; int id; } ;


 int EBUSY ;
 int O_NONBLOCK ;
 int pr_debug (char*,int ,int ) ;
 int vb2_dqbuf (int *,struct v4l2_buffer*,int) ;
 struct camif_vp* video_drvdata (struct file*) ;

__attribute__((used)) static int s3c_camif_dqbuf(struct file *file, void *priv,
      struct v4l2_buffer *buf)
{
 struct camif_vp *vp = video_drvdata(file);

 pr_debug("[vp%d] sequence: %d\n", vp->id, vp->frame_sequence);

 if (vp->owner && vp->owner != priv)
  return -EBUSY;

 return vb2_dqbuf(&vp->vb_queue, buf, file->f_flags & O_NONBLOCK);
}
