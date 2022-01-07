
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_buffer {TYPE_1__* vb2_queue; } ;
struct rga_frame {int size; } ;
struct rga_ctx {int dummy; } ;
struct TYPE_2__ {int type; } ;


 scalar_t__ IS_ERR (struct rga_frame*) ;
 int PTR_ERR (struct rga_frame*) ;
 struct rga_frame* rga_get_frame (struct rga_ctx*,int ) ;
 struct rga_ctx* vb2_get_drv_priv (TYPE_1__*) ;
 int vb2_set_plane_payload (struct vb2_buffer*,int ,int ) ;

__attribute__((used)) static int rga_buf_prepare(struct vb2_buffer *vb)
{
 struct rga_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);
 struct rga_frame *f = rga_get_frame(ctx, vb->vb2_queue->type);

 if (IS_ERR(f))
  return PTR_ERR(f);

 vb2_set_plane_payload(vb, 0, f->size);

 return 0;
}
