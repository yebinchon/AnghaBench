
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isp_res_device {int dummy; } ;
struct isp_device {int dummy; } ;


 int ISPRSZ_CNT ;
 int ISPRSZ_CNT_YCPOS ;


 int OMAP3_ISP_IOMEM_RESZ ;
 int isp_reg_clr (struct isp_device*,int ,int ,int ) ;
 int isp_reg_set (struct isp_device*,int ,int ,int ) ;
 struct isp_device* to_isp_device (struct isp_res_device*) ;

__attribute__((used)) static void resizer_set_ycpos(struct isp_res_device *res, u32 pixelcode)
{
 struct isp_device *isp = to_isp_device(res);

 switch (pixelcode) {
 case 128:
  isp_reg_set(isp, OMAP3_ISP_IOMEM_RESZ, ISPRSZ_CNT,
       ISPRSZ_CNT_YCPOS);
  break;
 case 129:
  isp_reg_clr(isp, OMAP3_ISP_IOMEM_RESZ, ISPRSZ_CNT,
       ISPRSZ_CNT_YCPOS);
  break;
 default:
  return;
 }
}
