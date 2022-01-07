
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct fastrpc_invoke_ctx {int nscalars; TYPE_2__* olaps; TYPE_1__* args; } ;
struct TYPE_4__ {scalar_t__ offset; scalar_t__ mstart; scalar_t__ mend; } ;
struct TYPE_3__ {int fd; } ;


 int ALIGN (int,int ) ;
 int FASTRPC_ALIGN ;

__attribute__((used)) static u64 fastrpc_get_payload_size(struct fastrpc_invoke_ctx *ctx, int metalen)
{
 u64 size = 0;
 int i;

 size = ALIGN(metalen, FASTRPC_ALIGN);
 for (i = 0; i < ctx->nscalars; i++) {
  if (ctx->args[i].fd == 0 || ctx->args[i].fd == -1) {

   if (ctx->olaps[i].offset == 0)
    size = ALIGN(size, FASTRPC_ALIGN);

   size += (ctx->olaps[i].mend - ctx->olaps[i].mstart);
  }
 }

 return size;
}
