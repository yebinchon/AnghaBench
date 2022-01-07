
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coda_ctx {int bitstream_fifo; } ;


 unsigned int kfifo_len (int *) ;

__attribute__((used)) static inline unsigned int coda_get_bitstream_payload(struct coda_ctx *ctx)
{
 return kfifo_len(&ctx->bitstream_fifo);
}
