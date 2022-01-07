
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsc_ctx {int m2m_ctx; } ;
struct file {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 struct gsc_ctx* fh_to_ctx (void*) ;
 int v4l2_m2m_streamoff (struct file*,int ,int) ;

__attribute__((used)) static int gsc_m2m_streamoff(struct file *file, void *fh,
       enum v4l2_buf_type type)
{
 struct gsc_ctx *ctx = fh_to_ctx(fh);
 return v4l2_m2m_streamoff(file, ctx->m2m_ctx, type);
}
