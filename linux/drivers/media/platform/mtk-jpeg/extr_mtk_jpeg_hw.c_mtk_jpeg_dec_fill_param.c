
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_jpeg_dec_param {int dummy; } ;


 int mtk_jpeg_calc_dma_group (struct mtk_jpeg_dec_param*) ;
 scalar_t__ mtk_jpeg_calc_dst_size (struct mtk_jpeg_dec_param*) ;
 int mtk_jpeg_calc_mcu (struct mtk_jpeg_dec_param*) ;
 scalar_t__ mtk_jpeg_decide_format (struct mtk_jpeg_dec_param*) ;

int mtk_jpeg_dec_fill_param(struct mtk_jpeg_dec_param *param)
{
 if (mtk_jpeg_decide_format(param))
  return -1;

 mtk_jpeg_calc_mcu(param);
 mtk_jpeg_calc_dma_group(param);
 if (mtk_jpeg_calc_dst_size(param))
  return -2;

 return 0;
}
