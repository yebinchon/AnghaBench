
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {int dummy; } ;
struct gsc_ctx {int m2m_ctx; } ;
struct file {int dummy; } ;


 struct gsc_ctx* fh_to_ctx (void*) ;
 int v4l2_m2m_dqbuf (struct file*,int ,struct v4l2_buffer*) ;

__attribute__((used)) static int gsc_m2m_dqbuf(struct file *file, void *fh,
      struct v4l2_buffer *buf)
{
 struct gsc_ctx *ctx = fh_to_ctx(fh);
 return v4l2_m2m_dqbuf(file, ctx->m2m_ctx, buf);
}
