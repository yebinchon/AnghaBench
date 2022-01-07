
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_res_device {int dummy; } ;
struct isp_device {int dummy; } ;
typedef enum resizer_colors_type { ____Placeholder_resizer_colors_type } resizer_colors_type ;


 int ISPRSZ_CNT ;
 int ISPRSZ_CNT_INPTYP ;
 int OMAP3_ISP_IOMEM_RESZ ;
 int RSZ_COLOR8 ;
 int isp_reg_clr (struct isp_device*,int ,int ,int ) ;
 int isp_reg_set (struct isp_device*,int ,int ,int ) ;
 struct isp_device* to_isp_device (struct isp_res_device*) ;

__attribute__((used)) static void resizer_set_intype(struct isp_res_device *res,
          enum resizer_colors_type type)
{
 struct isp_device *isp = to_isp_device(res);

 if (type == RSZ_COLOR8)
  isp_reg_set(isp, OMAP3_ISP_IOMEM_RESZ, ISPRSZ_CNT,
       ISPRSZ_CNT_INPTYP);
 else
  isp_reg_clr(isp, OMAP3_ISP_IOMEM_RESZ, ISPRSZ_CNT,
       ISPRSZ_CNT_INPTYP);
}
