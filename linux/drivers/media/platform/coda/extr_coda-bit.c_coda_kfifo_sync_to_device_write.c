
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct coda_dev {int dummy; } ;
struct TYPE_4__ {scalar_t__ paddr; } ;
struct __kfifo {int in; int mask; } ;
struct TYPE_3__ {struct __kfifo kfifo; } ;
struct coda_ctx {int reg_idx; TYPE_2__ bitstream; struct coda_dev* dev; TYPE_1__ bitstream_fifo; } ;


 int CODA_REG_BIT_WR_PTR (int ) ;
 int coda_write (struct coda_dev*,scalar_t__,int ) ;

__attribute__((used)) static void coda_kfifo_sync_to_device_write(struct coda_ctx *ctx)
{
 struct __kfifo *kfifo = &ctx->bitstream_fifo.kfifo;
 struct coda_dev *dev = ctx->dev;
 u32 wr_ptr;

 wr_ptr = ctx->bitstream.paddr + (kfifo->in & kfifo->mask);
 coda_write(dev, wr_ptr, CODA_REG_BIT_WR_PTR(ctx->reg_idx));
}
