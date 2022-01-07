
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_vcodec_ctx {int dummy; } ;


 int clean_display_buffer (struct mtk_vcodec_ctx*) ;
 int clean_free_buffer (struct mtk_vcodec_ctx*) ;
 int mtk_v4l2_err (char*,int) ;
 int vdec_if_decode (struct mtk_vcodec_ctx*,int *,int *,int*) ;

__attribute__((used)) static void mtk_vdec_flush_decoder(struct mtk_vcodec_ctx *ctx)
{
 bool res_chg;
 int ret = 0;

 ret = vdec_if_decode(ctx, ((void*)0), ((void*)0), &res_chg);
 if (ret)
  mtk_v4l2_err("DecodeFinal failed, ret=%d", ret);

 clean_display_buffer(ctx);
 clean_free_buffer(ctx);
}
