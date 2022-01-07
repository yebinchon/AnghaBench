
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_ctx {int bank1; int dev; } ;


 int s5p_mfc_release_generic_buf (int ,int *) ;

__attribute__((used)) static void s5p_mfc_release_codec_buffers_v6(struct s5p_mfc_ctx *ctx)
{
 s5p_mfc_release_generic_buf(ctx->dev, &ctx->bank1);
}
