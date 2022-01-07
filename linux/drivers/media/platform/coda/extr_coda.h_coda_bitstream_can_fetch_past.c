
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ in; } ;
struct TYPE_4__ {TYPE_1__ kfifo; } ;
struct coda_ctx {TYPE_2__ bitstream_fifo; } ;


 scalar_t__ ALIGN (unsigned int,int) ;

__attribute__((used)) static inline bool coda_bitstream_can_fetch_past(struct coda_ctx *ctx,
       unsigned int pos)
{
 return (int)(ctx->bitstream_fifo.kfifo.in - ALIGN(pos, 256)) > 512;
}
