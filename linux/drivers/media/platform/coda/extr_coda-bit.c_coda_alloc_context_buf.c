
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coda_ctx {int debugfs_entry; int dev; } ;
struct coda_aux_buf {int dummy; } ;


 int coda_alloc_aux_buf (int ,struct coda_aux_buf*,size_t,char const*,int ) ;

__attribute__((used)) static inline int coda_alloc_context_buf(struct coda_ctx *ctx,
      struct coda_aux_buf *buf, size_t size,
      const char *name)
{
 return coda_alloc_aux_buf(ctx->dev, buf, size, name, ctx->debugfs_entry);
}
