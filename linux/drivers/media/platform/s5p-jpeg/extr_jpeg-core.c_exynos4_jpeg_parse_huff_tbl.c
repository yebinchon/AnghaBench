
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vb2_v4l2_buffer {int vb2_buf; } ;
struct TYPE_5__ {int n; scalar_t__* len; scalar_t__* marker; } ;
struct TYPE_6__ {TYPE_2__ dht; } ;
struct TYPE_4__ {int m2m_ctx; } ;
struct s5p_jpeg_ctx {TYPE_3__ out_q; TYPE_1__ fh; struct s5p_jpeg* jpeg; } ;
struct s5p_jpeg_buffer {scalar_t__ size; scalar_t__ curr; scalar_t__ data; } ;
struct s5p_jpeg {scalar_t__ regs; } ;


 scalar_t__ exynos4_huff_tbl_len (char,char) ;
 scalar_t__ exynos4_huff_tbl_val (char,char) ;
 int get_byte (struct s5p_jpeg_buffer*) ;
 struct vb2_v4l2_buffer* v4l2_m2m_next_src_buf (int ) ;
 scalar_t__ vb2_plane_vaddr (int *,int ) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void exynos4_jpeg_parse_huff_tbl(struct s5p_jpeg_ctx *ctx)
{
 struct s5p_jpeg *jpeg = ctx->jpeg;
 struct vb2_v4l2_buffer *vb = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
 struct s5p_jpeg_buffer jpeg_buffer;
 unsigned int word;
 int c, i, n, j;

 for (j = 0; j < ctx->out_q.dht.n; ++j) {
  jpeg_buffer.size = ctx->out_q.dht.len[j];
  jpeg_buffer.data = (unsigned long)vb2_plane_vaddr(&vb->vb2_buf, 0) +
       ctx->out_q.dht.marker[j];
  jpeg_buffer.curr = 0;

  word = 0;
  while (jpeg_buffer.curr < jpeg_buffer.size) {
   char id, class;

   c = get_byte(&jpeg_buffer);
   if (c == -1)
    return;
   id = c & 0xf;
   class = (c >> 4) & 0xf;
   n = 0;
   for (i = 0; i < 16; ++i) {
    c = get_byte(&jpeg_buffer);
    if (c == -1)
     return;
    word |= c << ((i % 4) * 8);
    if ((i + 1) % 4 == 0) {
     writel(word, jpeg->regs +
     exynos4_huff_tbl_len(class, id) +
     (i / 4) * 4);
     word = 0;
    }
    n += c;
   }
   word = 0;
   for (i = 0; i < n; ++i) {
    c = get_byte(&jpeg_buffer);
    if (c == -1)
     return;
    word |= c << ((i % 4) * 8);
    if ((i + 1) % 4 == 0) {
     writel(word, jpeg->regs +
     exynos4_huff_tbl_val(class, id) +
     (i / 4) * 4);
     word = 0;
    }
   }
   if (i % 4) {
    writel(word, jpeg->regs +
    exynos4_huff_tbl_val(class, id) + (i / 4) * 4);
   }
   word = 0;
  }
 }
}
