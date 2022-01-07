
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int * owner; } ;
struct v4l2_requestbuffers {scalar_t__ count; int type; } ;
struct v4l2_m2m_ctx {int dummy; } ;
struct file {int * private_data; } ;


 struct vb2_queue* v4l2_m2m_get_vq (struct v4l2_m2m_ctx*,int ) ;
 int vb2_reqbufs (struct vb2_queue*,struct v4l2_requestbuffers*) ;

int v4l2_m2m_reqbufs(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
       struct v4l2_requestbuffers *reqbufs)
{
 struct vb2_queue *vq;
 int ret;

 vq = v4l2_m2m_get_vq(m2m_ctx, reqbufs->type);
 ret = vb2_reqbufs(vq, reqbufs);


 if (ret == 0)
  vq->owner = reqbufs->count ? file->private_data : ((void*)0);

 return ret;
}
