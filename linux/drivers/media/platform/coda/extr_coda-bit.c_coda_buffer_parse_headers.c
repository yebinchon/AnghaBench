
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct vb2_v4l2_buffer {int vb2_buf; } ;
struct coda_ctx {TYPE_1__* codec; } ;
struct TYPE_2__ {int src_fourcc; } ;




 int coda_mpeg2_parse_headers (struct coda_ctx*,int *,int ) ;
 int coda_mpeg4_parse_headers (struct coda_ctx*,int *,int ) ;
 int * vb2_plane_vaddr (int *,int ) ;

__attribute__((used)) static u32 coda_buffer_parse_headers(struct coda_ctx *ctx,
         struct vb2_v4l2_buffer *src_buf,
         u32 payload)
{
 u8 *vaddr = vb2_plane_vaddr(&src_buf->vb2_buf, 0);
 u32 size = 0;

 switch (ctx->codec->src_fourcc) {
 case 129:
  size = coda_mpeg2_parse_headers(ctx, vaddr, payload);
  break;
 case 128:
  size = coda_mpeg4_parse_headers(ctx, vaddr, payload);
  break;
 default:
  break;
 }

 return size;
}
