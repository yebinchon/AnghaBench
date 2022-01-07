
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_v4l2_buffer {int vb2_buf; } ;
struct TYPE_4__ {scalar_t__ sof; int sof_len; } ;
struct TYPE_3__ {int m2m_ctx; } ;
struct s5p_jpeg_ctx {TYPE_2__ out_q; TYPE_1__ fh; struct s5p_jpeg* jpeg; } ;
struct s5p_jpeg_buffer {scalar_t__ curr; scalar_t__ data; int size; } ;
struct s5p_jpeg {int regs; } ;


 int exynos4_jpeg_select_dec_q_tbl (int ,int,int) ;
 int exynos4_jpeg_set_dec_components (int ,int) ;
 int get_byte (struct s5p_jpeg_buffer*) ;
 int skip (struct s5p_jpeg_buffer*,int) ;
 struct vb2_v4l2_buffer* v4l2_m2m_next_src_buf (int ) ;
 scalar_t__ vb2_plane_vaddr (int *,int ) ;

__attribute__((used)) static void exynos4_jpeg_parse_decode_q_tbl(struct s5p_jpeg_ctx *ctx)
{
 struct s5p_jpeg *jpeg = ctx->jpeg;
 struct vb2_v4l2_buffer *vb = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
 struct s5p_jpeg_buffer jpeg_buffer;
 int c, x, components;

 jpeg_buffer.size = ctx->out_q.sof_len;
 jpeg_buffer.data =
  (unsigned long)vb2_plane_vaddr(&vb->vb2_buf, 0) + ctx->out_q.sof;
 jpeg_buffer.curr = 0;

 skip(&jpeg_buffer, 5);
 components = get_byte(&jpeg_buffer);
 if (components == -1)
  return;

 exynos4_jpeg_set_dec_components(jpeg->regs, components);

 while (components--) {
  c = get_byte(&jpeg_buffer);
  if (c == -1)
   return;
  skip(&jpeg_buffer, 1);
  x = get_byte(&jpeg_buffer);
  if (x == -1)
   return;
  exynos4_jpeg_select_dec_q_tbl(jpeg->regs, c, x);
 }
}
