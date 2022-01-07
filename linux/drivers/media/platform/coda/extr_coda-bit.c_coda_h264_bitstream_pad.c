
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct coda_ctx {int bitstream_fifo; } ;


 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int coda_h264_filler_nal (int,unsigned char*) ;
 int kfifo_in (int *,unsigned char*,int) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;

__attribute__((used)) static int coda_h264_bitstream_pad(struct coda_ctx *ctx, u32 size)
{
 unsigned char *buf;
 u32 n;

 if (size < 6)
  size = 6;

 buf = kmalloc(size, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 coda_h264_filler_nal(size, buf);
 n = kfifo_in(&ctx->bitstream_fifo, buf, size);
 kfree(buf);

 return (n < size) ? -ENOSPC : 0;
}
