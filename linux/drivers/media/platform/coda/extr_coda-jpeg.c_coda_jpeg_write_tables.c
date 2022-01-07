
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef struct coda_memcpy_desc {int member_0; int member_2; int member_1; } const coda_memcpy_desc ;
struct TYPE_4__ {int vaddr; } ;
struct TYPE_3__ {int * jpeg_qmat_tab; } ;
struct coda_ctx {TYPE_2__ parabuf; TYPE_1__ params; } ;
typedef int luma_dc_value ;
typedef int luma_dc_bits ;
typedef int luma_ac_value ;
typedef int luma_ac_bits ;
typedef int chroma_dc_value ;
typedef int chroma_dc_bits ;
typedef int chroma_ac_value ;
typedef int chroma_ac_bits ;


 int ARRAY_SIZE (struct coda_memcpy_desc const*) ;




 int coda_memcpy_parabuf (int ,struct coda_memcpy_desc const*) ;





int coda_jpeg_write_tables(struct coda_ctx *ctx)
{
 int i;
 static const struct coda_memcpy_desc huff[8] = {
  { 0, 129, sizeof(129) },
  { 16, 128, sizeof(128) },
  { 32, 131, sizeof(131) },
  { 48, 130, sizeof(130) },
  { 216, 133, sizeof(133) },
  { 232, 132, sizeof(132) },
  { 248, 135, sizeof(135) },
  { 264, 134, sizeof(134) },
 };
 struct coda_memcpy_desc qmat[3] = {
  { 512, ctx->params.jpeg_qmat_tab[0], 64 },
  { 576, ctx->params.jpeg_qmat_tab[1], 64 },
  { 640, ctx->params.jpeg_qmat_tab[1], 64 },
 };


 for (i = 0; i < ARRAY_SIZE(huff); i++)
  coda_memcpy_parabuf(ctx->parabuf.vaddr, huff + i);


 for (i = 0; i < ARRAY_SIZE(qmat); i++)
  coda_memcpy_parabuf(ctx->parabuf.vaddr, qmat + i);

 return 0;
}
