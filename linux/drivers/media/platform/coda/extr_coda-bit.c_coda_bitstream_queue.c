
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct coda_ctx {int bitstream_fifo; } ;


 int ENOSPC ;
 scalar_t__ kfifo_in (int *,int const*,scalar_t__) ;

__attribute__((used)) static int coda_bitstream_queue(struct coda_ctx *ctx, const u8 *buf, u32 size)
{
 u32 n = kfifo_in(&ctx->bitstream_fifo, buf, size);

 return (n < size) ? -ENOSPC : 0;
}
