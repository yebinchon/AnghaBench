
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct delta_ipc_ctx {TYPE_1__* ipc_buf; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int paddr; void* vaddr; } ;



__attribute__((used)) static inline dma_addr_t to_paddr(struct delta_ipc_ctx *ctx, void *vaddr)
{
 return (ctx->ipc_buf->paddr + (vaddr - ctx->ipc_buf->vaddr));
}
