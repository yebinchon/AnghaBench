
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct coda_q_data {int sizeimage; } ;
struct TYPE_4__ {int size; scalar_t__ vaddr; int paddr; } ;
struct coda_ctx {TYPE_2__ bitstream; int bitstream_fifo; TYPE_1__* dev; } ;
struct TYPE_3__ {int v4l2_dev; int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ dma_alloc_wc (int ,int ,int *,int ) ;
 int kfifo_init (int *,scalar_t__,int ) ;
 int roundup_pow_of_two (int) ;
 int v4l2_err (int *,char*) ;

__attribute__((used)) static int coda_alloc_bitstream_buffer(struct coda_ctx *ctx,
           struct coda_q_data *q_data)
{
 if (ctx->bitstream.vaddr)
  return 0;

 ctx->bitstream.size = roundup_pow_of_two(q_data->sizeimage * 2);
 ctx->bitstream.vaddr = dma_alloc_wc(ctx->dev->dev, ctx->bitstream.size,
         &ctx->bitstream.paddr, GFP_KERNEL);
 if (!ctx->bitstream.vaddr) {
  v4l2_err(&ctx->dev->v4l2_dev,
    "failed to allocate bitstream ringbuffer");
  return -ENOMEM;
 }
 kfifo_init(&ctx->bitstream_fifo,
     ctx->bitstream.vaddr, ctx->bitstream.size);

 return 0;
}
