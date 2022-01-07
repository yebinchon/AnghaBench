
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_res_device {int dummy; } ;
struct isp_device {int dummy; } ;
typedef enum resizer_chroma_algo { ____Placeholder_resizer_chroma_algo } resizer_chroma_algo ;


 int ISPRSZ_CNT ;
 int ISPRSZ_CNT_CBILIN ;
 int OMAP3_ISP_IOMEM_RESZ ;
 int RSZ_BILINEAR ;
 int isp_reg_clr (struct isp_device*,int ,int ,int ) ;
 int isp_reg_set (struct isp_device*,int ,int ,int ) ;
 struct isp_device* to_isp_device (struct isp_res_device*) ;

__attribute__((used)) static void resizer_set_bilinear(struct isp_res_device *res,
     enum resizer_chroma_algo type)
{
 struct isp_device *isp = to_isp_device(res);

 if (type == RSZ_BILINEAR)
  isp_reg_set(isp, OMAP3_ISP_IOMEM_RESZ, ISPRSZ_CNT,
       ISPRSZ_CNT_CBILIN);
 else
  isp_reg_clr(isp, OMAP3_ISP_IOMEM_RESZ, ISPRSZ_CNT,
       ISPRSZ_CNT_CBILIN);
}
