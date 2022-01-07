
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct delta_ipc_ctx {TYPE_1__* ipc_buf; } ;
struct TYPE_2__ {void* vaddr; int size; } ;



__attribute__((used)) static inline bool is_valid_data(struct delta_ipc_ctx *ctx,
     void *data, u32 size)
{
 return ((data >= ctx->ipc_buf->vaddr) &&
  ((data + size) <= (ctx->ipc_buf->vaddr + ctx->ipc_buf->size)));
}
