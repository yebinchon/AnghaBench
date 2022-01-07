
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct fastrpc_invoke_ctx {int nbufs; TYPE_2__* olaps; TYPE_1__* args; } ;
struct TYPE_4__ {scalar_t__ start; scalar_t__ end; int raix; scalar_t__ mstart; scalar_t__ mend; scalar_t__ offset; } ;
struct TYPE_3__ {scalar_t__ ptr; scalar_t__ length; } ;


 int olaps_cmp ;
 int sort (TYPE_2__*,int,int,int ,int *) ;

__attribute__((used)) static void fastrpc_get_buff_overlaps(struct fastrpc_invoke_ctx *ctx)
{
 u64 max_end = 0;
 int i;

 for (i = 0; i < ctx->nbufs; ++i) {
  ctx->olaps[i].start = ctx->args[i].ptr;
  ctx->olaps[i].end = ctx->olaps[i].start + ctx->args[i].length;
  ctx->olaps[i].raix = i;
 }

 sort(ctx->olaps, ctx->nbufs, sizeof(*ctx->olaps), olaps_cmp, ((void*)0));

 for (i = 0; i < ctx->nbufs; ++i) {

  if (ctx->olaps[i].start < max_end) {
   ctx->olaps[i].mstart = max_end;
   ctx->olaps[i].mend = ctx->olaps[i].end;
   ctx->olaps[i].offset = max_end - ctx->olaps[i].start;

   if (ctx->olaps[i].end > max_end) {
    max_end = ctx->olaps[i].end;
   } else {
    ctx->olaps[i].mend = 0;
    ctx->olaps[i].mstart = 0;
   }

  } else {
   ctx->olaps[i].mend = ctx->olaps[i].end;
   ctx->olaps[i].mstart = ctx->olaps[i].start;
   ctx->olaps[i].offset = 0;
   max_end = ctx->olaps[i].end;
  }
 }
}
