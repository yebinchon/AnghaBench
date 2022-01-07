
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int m2m_ctx; } ;
struct vim2m_ctx {int transtime; int work_run; int hdl; TYPE_3__ fh; } ;
struct TYPE_4__ {int req; } ;
struct TYPE_5__ {TYPE_1__ req_obj; } ;
struct vb2_v4l2_buffer {TYPE_2__ vb2_buf; } ;


 int device_process (struct vim2m_ctx*,struct vb2_v4l2_buffer*,struct vb2_v4l2_buffer*) ;
 int msecs_to_jiffies (int ) ;
 int schedule_delayed_work (int *,int ) ;
 int v4l2_ctrl_request_complete (int ,int *) ;
 int v4l2_ctrl_request_setup (int ,int *) ;
 struct vb2_v4l2_buffer* v4l2_m2m_next_dst_buf (int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_next_src_buf (int ) ;

__attribute__((used)) static void device_run(void *priv)
{
 struct vim2m_ctx *ctx = priv;
 struct vb2_v4l2_buffer *src_buf, *dst_buf;

 src_buf = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
 dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);


 v4l2_ctrl_request_setup(src_buf->vb2_buf.req_obj.req,
    &ctx->hdl);

 device_process(ctx, src_buf, dst_buf);


 v4l2_ctrl_request_complete(src_buf->vb2_buf.req_obj.req,
       &ctx->hdl);


 schedule_delayed_work(&ctx->work_run, msecs_to_jiffies(ctx->transtime));
}
