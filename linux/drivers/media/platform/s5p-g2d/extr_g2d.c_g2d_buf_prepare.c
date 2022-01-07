
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_buffer {TYPE_1__* vb2_queue; } ;
struct g2d_frame {int size; } ;
struct g2d_ctx {int dummy; } ;
struct TYPE_2__ {int type; } ;


 scalar_t__ IS_ERR (struct g2d_frame*) ;
 int PTR_ERR (struct g2d_frame*) ;
 struct g2d_frame* get_frame (struct g2d_ctx*,int ) ;
 struct g2d_ctx* vb2_get_drv_priv (TYPE_1__*) ;
 int vb2_set_plane_payload (struct vb2_buffer*,int ,int ) ;

__attribute__((used)) static int g2d_buf_prepare(struct vb2_buffer *vb)
{
 struct g2d_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);
 struct g2d_frame *f = get_frame(ctx, vb->vb2_queue->type);

 if (IS_ERR(f))
  return PTR_ERR(f);
 vb2_set_plane_payload(vb, 0, f->size);
 return 0;
}
