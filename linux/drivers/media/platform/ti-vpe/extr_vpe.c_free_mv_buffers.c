
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpe_ctx {int dummy; } ;


 int realloc_mv_buffers (struct vpe_ctx*,int ) ;

__attribute__((used)) static void free_mv_buffers(struct vpe_ctx *ctx)
{
 realloc_mv_buffers(ctx, 0);
}
