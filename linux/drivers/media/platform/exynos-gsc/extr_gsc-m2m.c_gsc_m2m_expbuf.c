
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_exportbuffer {int dummy; } ;
struct gsc_ctx {int m2m_ctx; } ;
struct file {int dummy; } ;


 struct gsc_ctx* fh_to_ctx (void*) ;
 int v4l2_m2m_expbuf (struct file*,int ,struct v4l2_exportbuffer*) ;

__attribute__((used)) static int gsc_m2m_expbuf(struct file *file, void *fh,
    struct v4l2_exportbuffer *eb)
{
 struct gsc_ctx *ctx = fh_to_ctx(fh);
 return v4l2_m2m_expbuf(file, ctx->m2m_ctx, eb);
}
