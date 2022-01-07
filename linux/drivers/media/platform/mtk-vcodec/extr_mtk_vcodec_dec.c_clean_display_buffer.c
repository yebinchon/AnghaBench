
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_buffer {int dummy; } ;
struct mtk_vcodec_ctx {int dummy; } ;


 struct vb2_buffer* get_display_buffer (struct mtk_vcodec_ctx*) ;

__attribute__((used)) static void clean_display_buffer(struct mtk_vcodec_ctx *ctx)
{
 struct vb2_buffer *framptr;

 do {
  framptr = get_display_buffer(ctx);
 } while (framptr);
}
