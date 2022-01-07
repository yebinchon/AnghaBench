
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BIT_INQST_MASK_EOF ;
 int BIT_INQST_MASK_ERROR_BS ;
 int BIT_INQST_MASK_OVERFLOW ;
 int BIT_INQST_MASK_PAUSE ;
 int BIT_INQST_MASK_UNDERFLOW ;
 int MTK_JPEG_DEC_RESULT_EOF_DONE ;
 int MTK_JPEG_DEC_RESULT_ERROR_BS ;
 int MTK_JPEG_DEC_RESULT_ERROR_UNKNOWN ;
 int MTK_JPEG_DEC_RESULT_OVERFLOW ;
 int MTK_JPEG_DEC_RESULT_PAUSE ;
 int MTK_JPEG_DEC_RESULT_UNDERFLOW ;

u32 mtk_jpeg_dec_enum_result(u32 irq_result)
{
 if (irq_result & BIT_INQST_MASK_EOF)
  return MTK_JPEG_DEC_RESULT_EOF_DONE;
 if (irq_result & BIT_INQST_MASK_PAUSE)
  return MTK_JPEG_DEC_RESULT_PAUSE;
 if (irq_result & BIT_INQST_MASK_UNDERFLOW)
  return MTK_JPEG_DEC_RESULT_UNDERFLOW;
 if (irq_result & BIT_INQST_MASK_OVERFLOW)
  return MTK_JPEG_DEC_RESULT_OVERFLOW;
 if (irq_result & BIT_INQST_MASK_ERROR_BS)
  return MTK_JPEG_DEC_RESULT_ERROR_BS;

 return MTK_JPEG_DEC_RESULT_ERROR_UNKNOWN;
}
