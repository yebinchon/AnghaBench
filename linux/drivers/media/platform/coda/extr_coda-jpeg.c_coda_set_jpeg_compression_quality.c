
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int jpeg_quality; scalar_t__* jpeg_qmat_tab; } ;
struct coda_ctx {TYPE_1__ params; } ;


 int chroma_q ;
 int coda_scale_quant_table (scalar_t__,unsigned int) ;
 int luma_q ;
 int memcpy (scalar_t__,int ,int) ;

void coda_set_jpeg_compression_quality(struct coda_ctx *ctx, int quality)
{
 unsigned int scale;

 ctx->params.jpeg_quality = quality;


 if (quality > 100)
  quality = 100;
 if (quality < 5)
  quality = 5;





 if (quality < 50)
  scale = 5000 / quality;
 else
  scale = 200 - 2 * quality;

 if (ctx->params.jpeg_qmat_tab[0]) {
  memcpy(ctx->params.jpeg_qmat_tab[0], luma_q, 64);
  coda_scale_quant_table(ctx->params.jpeg_qmat_tab[0], scale);
 }
 if (ctx->params.jpeg_qmat_tab[1]) {
  memcpy(ctx->params.jpeg_qmat_tab[1], chroma_q, 64);
  coda_scale_quant_table(ctx->params.jpeg_qmat_tab[1], scale);
 }
}
