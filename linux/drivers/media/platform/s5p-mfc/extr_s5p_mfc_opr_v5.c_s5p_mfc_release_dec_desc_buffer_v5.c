
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_ctx {int dsc; int dev; } ;


 int s5p_mfc_release_priv_buf (int ,int *) ;

__attribute__((used)) static void s5p_mfc_release_dec_desc_buffer_v5(struct s5p_mfc_ctx *ctx)
{
 s5p_mfc_release_priv_buf(ctx->dev, &ctx->dsc);
}
