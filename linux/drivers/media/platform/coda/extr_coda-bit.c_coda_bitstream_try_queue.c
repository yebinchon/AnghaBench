
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef unsigned long u32 ;
struct vb2_v4l2_buffer {int flags; scalar_t__ sequence; int vb2_buf; } ;
struct TYPE_5__ {scalar_t__ size; } ;
struct coda_ctx {scalar_t__ qsequence; int hold; TYPE_4__* dev; TYPE_3__* codec; TYPE_1__ bitstream; } ;
struct TYPE_8__ {int m2m_dev; int v4l2_dev; TYPE_2__* devtype; } ;
struct TYPE_7__ {scalar_t__ src_fourcc; } ;
struct TYPE_6__ {scalar_t__ product; } ;


 scalar_t__ CODA_960 ;
 int V4L2_BUF_FLAG_LAST ;
 scalar_t__ V4L2_PIX_FMT_H264 ;
 int coda_bit_stream_end_flag (struct coda_ctx*) ;
 int coda_bitstream_queue (struct coda_ctx*,int *,unsigned long) ;
 unsigned long coda_buffer_parse_headers (struct coda_ctx*,struct vb2_v4l2_buffer*,unsigned long) ;
 int coda_dbg (int,struct coda_ctx*,char*,...) ;
 scalar_t__ coda_get_bitstream_payload (struct coda_ctx*) ;
 int coda_h264_bitstream_pad (struct coda_ctx*,int) ;
 int coda_kfifo_sync_to_device_write (struct coda_ctx*) ;
 int v4l2_err (int *,char*) ;
 struct coda_ctx* v4l2_m2m_get_curr_priv (int ) ;
 unsigned long vb2_get_plane_payload (int *,int ) ;
 int * vb2_plane_vaddr (int *,int ) ;

__attribute__((used)) static bool coda_bitstream_try_queue(struct coda_ctx *ctx,
         struct vb2_v4l2_buffer *src_buf)
{
 unsigned long payload = vb2_get_plane_payload(&src_buf->vb2_buf, 0);
 u8 *vaddr = vb2_plane_vaddr(&src_buf->vb2_buf, 0);
 int ret;
 int i;

 if (coda_get_bitstream_payload(ctx) + payload + 512 >=
     ctx->bitstream.size)
  return 0;

 if (!vaddr) {
  v4l2_err(&ctx->dev->v4l2_dev, "trying to queue empty buffer\n");
  return 1;
 }

 if (ctx->qsequence == 0 && payload < 512) {







  u32 header_size = coda_buffer_parse_headers(ctx, src_buf,
           payload);

  if (header_size) {
   coda_dbg(1, ctx, "pad with %u-byte header\n",
     header_size);
   for (i = payload; i < 512; i += header_size) {
    ret = coda_bitstream_queue(ctx, vaddr,
          header_size);
    if (ret < 0) {
     v4l2_err(&ctx->dev->v4l2_dev,
       "bitstream buffer overflow\n");
     return 0;
    }
    if (ctx->dev->devtype->product == CODA_960)
     break;
   }
  } else {
   coda_dbg(1, ctx,
     "could not parse header, sequence initialization might fail\n");
  }
 }


 if (ctx->qsequence == 0 && payload < 512 &&
     ctx->codec->src_fourcc == V4L2_PIX_FMT_H264)
  coda_h264_bitstream_pad(ctx, 512 - payload);

 ret = coda_bitstream_queue(ctx, vaddr, payload);
 if (ret < 0) {
  v4l2_err(&ctx->dev->v4l2_dev, "bitstream buffer overflow\n");
  return 0;
 }

 src_buf->sequence = ctx->qsequence++;


 if (ctx == v4l2_m2m_get_curr_priv(ctx->dev->m2m_dev))
  coda_kfifo_sync_to_device_write(ctx);


 if (src_buf->flags & V4L2_BUF_FLAG_LAST)
  coda_bit_stream_end_flag(ctx);
 ctx->hold = 0;

 return 1;
}
