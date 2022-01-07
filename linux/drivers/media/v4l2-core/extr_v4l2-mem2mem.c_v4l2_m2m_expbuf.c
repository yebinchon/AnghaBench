
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct v4l2_m2m_ctx {int dummy; } ;
struct v4l2_exportbuffer {int type; } ;
struct file {int dummy; } ;


 struct vb2_queue* v4l2_m2m_get_vq (struct v4l2_m2m_ctx*,int ) ;
 int vb2_expbuf (struct vb2_queue*,struct v4l2_exportbuffer*) ;

int v4l2_m2m_expbuf(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
    struct v4l2_exportbuffer *eb)
{
 struct vb2_queue *vq;

 vq = v4l2_m2m_get_vq(m2m_ctx, eb->type);
 return vb2_expbuf(vq, eb);
}
