
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vicodec_ctx {int hdl; } ;
struct TYPE_2__ {int req; } ;
struct vb2_buffer {TYPE_1__ req_obj; int vb2_queue; } ;


 int v4l2_ctrl_request_complete (int ,int *) ;
 struct vicodec_ctx* vb2_get_drv_priv (int ) ;

__attribute__((used)) static void vicodec_buf_request_complete(struct vb2_buffer *vb)
{
 struct vicodec_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);

 v4l2_ctrl_request_complete(vb->req_obj.req, &ctx->hdl);
}
