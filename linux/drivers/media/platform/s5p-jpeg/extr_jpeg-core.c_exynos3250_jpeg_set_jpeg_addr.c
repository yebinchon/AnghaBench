
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_v4l2_buffer {int vb2_buf; } ;
struct TYPE_2__ {int m2m_ctx; } ;
struct s5p_jpeg_ctx {scalar_t__ mode; TYPE_1__ fh; struct s5p_jpeg* jpeg; } ;
struct s5p_jpeg {int regs; } ;


 scalar_t__ S5P_JPEG_ENCODE ;
 int exynos3250_jpeg_jpgadr (int ,unsigned int) ;
 struct vb2_v4l2_buffer* v4l2_m2m_next_dst_buf (int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_next_src_buf (int ) ;
 unsigned int vb2_dma_contig_plane_dma_addr (int *,int ) ;

__attribute__((used)) static void exynos3250_jpeg_set_jpeg_addr(struct s5p_jpeg_ctx *ctx)
{
 struct s5p_jpeg *jpeg = ctx->jpeg;
 struct vb2_v4l2_buffer *vb;
 unsigned int jpeg_addr = 0;

 if (ctx->mode == S5P_JPEG_ENCODE)
  vb = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
 else
  vb = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);

 jpeg_addr = vb2_dma_contig_plane_dma_addr(&vb->vb2_buf, 0);
 exynos3250_jpeg_jpgadr(jpeg->regs, jpeg_addr);
}
