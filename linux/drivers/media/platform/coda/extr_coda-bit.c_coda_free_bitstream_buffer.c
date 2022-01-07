
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * vaddr; int paddr; int size; } ;
struct coda_ctx {int bitstream_fifo; TYPE_2__ bitstream; TYPE_1__* dev; } ;
struct TYPE_3__ {int dev; } ;


 int dma_free_wc (int ,int ,int *,int ) ;
 int kfifo_init (int *,int *,int ) ;

__attribute__((used)) static void coda_free_bitstream_buffer(struct coda_ctx *ctx)
{
 if (ctx->bitstream.vaddr == ((void*)0))
  return;

 dma_free_wc(ctx->dev->dev, ctx->bitstream.size, ctx->bitstream.vaddr,
      ctx->bitstream.paddr);
 ctx->bitstream.vaddr = ((void*)0);
 kfifo_init(&ctx->bitstream_fifo, ((void*)0), 0);
}
