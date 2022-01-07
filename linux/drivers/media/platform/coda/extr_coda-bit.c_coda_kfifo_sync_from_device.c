
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct coda_dev {int dummy; } ;
struct TYPE_3__ {int paddr; } ;
struct __kfifo {int out; int in; int mask; } ;
struct TYPE_4__ {struct __kfifo kfifo; } ;
struct coda_ctx {TYPE_1__ bitstream; int reg_idx; struct coda_dev* dev; TYPE_2__ bitstream_fifo; } ;


 int CODA_REG_BIT_RD_PTR (int ) ;
 int coda_read (struct coda_dev*,int ) ;

__attribute__((used)) static void coda_kfifo_sync_from_device(struct coda_ctx *ctx)
{
 struct __kfifo *kfifo = &ctx->bitstream_fifo.kfifo;
 struct coda_dev *dev = ctx->dev;
 u32 rd_ptr;

 rd_ptr = coda_read(dev, CODA_REG_BIT_RD_PTR(ctx->reg_idx));
 kfifo->out = (kfifo->in & ~kfifo->mask) |
        (rd_ptr - ctx->bitstream.paddr);
 if (kfifo->out > kfifo->in)
  kfifo->out -= kfifo->mask + 1;
}
