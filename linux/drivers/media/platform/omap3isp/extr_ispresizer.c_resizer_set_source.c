
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_res_device {int dummy; } ;
struct isp_device {int dummy; } ;
typedef enum resizer_input_entity { ____Placeholder_resizer_input_entity } resizer_input_entity ;


 int ISPRSZ_CNT ;
 int ISPRSZ_CNT_INPSRC ;
 int OMAP3_ISP_IOMEM_RESZ ;
 int RESIZER_INPUT_MEMORY ;
 int isp_reg_clr (struct isp_device*,int ,int ,int ) ;
 int isp_reg_set (struct isp_device*,int ,int ,int ) ;
 struct isp_device* to_isp_device (struct isp_res_device*) ;

__attribute__((used)) static void resizer_set_source(struct isp_res_device *res,
          enum resizer_input_entity source)
{
 struct isp_device *isp = to_isp_device(res);

 if (source == RESIZER_INPUT_MEMORY)
  isp_reg_set(isp, OMAP3_ISP_IOMEM_RESZ, ISPRSZ_CNT,
       ISPRSZ_CNT_INPSRC);
 else
  isp_reg_clr(isp, OMAP3_ISP_IOMEM_RESZ, ISPRSZ_CNT,
       ISPRSZ_CNT_INPSRC);
}
