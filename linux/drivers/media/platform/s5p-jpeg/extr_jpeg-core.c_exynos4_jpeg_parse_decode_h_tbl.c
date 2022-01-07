
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_v4l2_buffer {int vb2_buf; } ;
struct TYPE_4__ {scalar_t__ sos; } ;
struct TYPE_3__ {int m2m_ctx; } ;
struct s5p_jpeg_ctx {TYPE_2__ out_q; TYPE_1__ fh; struct s5p_jpeg* jpeg; } ;
struct s5p_jpeg_buffer {int size; scalar_t__ curr; scalar_t__ data; } ;
struct s5p_jpeg {int regs; } ;


 int exynos4_jpeg_select_dec_h_tbl (int ,int,int) ;
 int get_byte (struct s5p_jpeg_buffer*) ;
 scalar_t__ get_word_be (struct s5p_jpeg_buffer*,unsigned int*) ;
 struct vb2_v4l2_buffer* v4l2_m2m_next_src_buf (int ) ;
 scalar_t__ vb2_plane_vaddr (int *,int ) ;

__attribute__((used)) static void exynos4_jpeg_parse_decode_h_tbl(struct s5p_jpeg_ctx *ctx)
{
 struct s5p_jpeg *jpeg = ctx->jpeg;
 struct vb2_v4l2_buffer *vb = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
 struct s5p_jpeg_buffer jpeg_buffer;
 unsigned int word;
 int c, x, components;

 jpeg_buffer.size = 2;
 jpeg_buffer.data =
  (unsigned long)vb2_plane_vaddr(&vb->vb2_buf, 0) + ctx->out_q.sos + 2;
 jpeg_buffer.curr = 0;

 word = 0;

 if (get_word_be(&jpeg_buffer, &word))
  return;
 jpeg_buffer.size = (long)word - 2;
 jpeg_buffer.data += 2;
 jpeg_buffer.curr = 0;

 components = get_byte(&jpeg_buffer);
 if (components == -1)
  return;
 while (components--) {
  c = get_byte(&jpeg_buffer);
  if (c == -1)
   return;
  x = get_byte(&jpeg_buffer);
  if (x == -1)
   return;
  exynos4_jpeg_select_dec_h_tbl(jpeg->regs, c,
     (((x >> 4) & 0x1) << 1) | (x & 0x1));
 }

}
