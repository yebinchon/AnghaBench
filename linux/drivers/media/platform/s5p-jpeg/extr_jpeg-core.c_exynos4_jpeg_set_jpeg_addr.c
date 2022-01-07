
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vb2_v4l2_buffer {int vb2_buf; } ;
struct TYPE_6__ {scalar_t__ sos; } ;
struct TYPE_4__ {int m2m_ctx; } ;
struct s5p_jpeg_ctx {scalar_t__ mode; TYPE_3__ out_q; TYPE_1__ fh; struct s5p_jpeg* jpeg; } ;
struct s5p_jpeg {int regs; TYPE_2__* variant; } ;
struct TYPE_5__ {scalar_t__ version; } ;


 scalar_t__ S5P_JPEG_DECODE ;
 scalar_t__ S5P_JPEG_ENCODE ;
 scalar_t__ SJPEG_EXYNOS5433 ;
 int exynos4_jpeg_set_stream_buf_address (int ,unsigned int) ;
 struct vb2_v4l2_buffer* v4l2_m2m_next_dst_buf (int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_next_src_buf (int ) ;
 unsigned int vb2_dma_contig_plane_dma_addr (int *,int ) ;

__attribute__((used)) static void exynos4_jpeg_set_jpeg_addr(struct s5p_jpeg_ctx *ctx)
{
 struct s5p_jpeg *jpeg = ctx->jpeg;
 struct vb2_v4l2_buffer *vb;
 unsigned int jpeg_addr = 0;

 if (ctx->mode == S5P_JPEG_ENCODE)
  vb = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
 else
  vb = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);

 jpeg_addr = vb2_dma_contig_plane_dma_addr(&vb->vb2_buf, 0);
 if (jpeg->variant->version == SJPEG_EXYNOS5433 &&
     ctx->mode == S5P_JPEG_DECODE)
  jpeg_addr += ctx->out_q.sos;
 exynos4_jpeg_set_stream_buf_address(jpeg->regs, jpeg_addr);
}
