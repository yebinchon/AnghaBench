
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {struct v4l2_fh* owner; } ;
struct v4l2_fh {scalar_t__ vdev; } ;


 int v4l_enable_media_source (scalar_t__) ;

int v4l_vb2q_enable_media_source(struct vb2_queue *q)
{
 struct v4l2_fh *fh = q->owner;

 if (fh && fh->vdev)
  return v4l_enable_media_source(fh->vdev);
 return 0;
}
