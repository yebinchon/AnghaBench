
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mtk_jpeg_dec_param {int dummy; } ;


 scalar_t__ mtk_jpeg_dec_fill_param (struct mtk_jpeg_dec_param*) ;
 int mtk_jpeg_do_parse (struct mtk_jpeg_dec_param*,int *,int ) ;

bool mtk_jpeg_parse(struct mtk_jpeg_dec_param *param, u8 *src_addr_va,
      u32 src_size)
{
 if (!mtk_jpeg_do_parse(param, src_addr_va, src_size))
  return 0;
 if (mtk_jpeg_dec_fill_param(param))
  return 0;

 return 1;
}
