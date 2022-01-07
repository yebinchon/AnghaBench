
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct resizer_ratio {int horz; int vert; } ;
struct isp_res_device {int dummy; } ;
struct isp_device {int dummy; } ;
struct TYPE_2__ {int * v_filter_coef_4tap; int * v_filter_coef_7tap; int * h_filter_coef_4tap; int * h_filter_coef_7tap; } ;


 int ISPRSZ_CNT ;
 int ISPRSZ_CNT_HRSZ_MASK ;
 int ISPRSZ_CNT_HRSZ_SHIFT ;
 int ISPRSZ_CNT_VRSZ_MASK ;
 int ISPRSZ_CNT_VRSZ_SHIFT ;
 int MID_RESIZE_VALUE ;
 int OMAP3_ISP_IOMEM_RESZ ;
 TYPE_1__ filter_coefs ;
 int isp_reg_readl (struct isp_device*,int ,int ) ;
 int isp_reg_writel (struct isp_device*,int,int ,int ) ;
 int resizer_set_filters (struct isp_res_device*,int const*,int const*) ;
 struct isp_device* to_isp_device (struct isp_res_device*) ;

__attribute__((used)) static void resizer_set_ratio(struct isp_res_device *res,
         const struct resizer_ratio *ratio)
{
 struct isp_device *isp = to_isp_device(res);
 const u16 *h_filter, *v_filter;
 u32 rgval;

 rgval = isp_reg_readl(isp, OMAP3_ISP_IOMEM_RESZ, ISPRSZ_CNT) &
         ~(ISPRSZ_CNT_HRSZ_MASK | ISPRSZ_CNT_VRSZ_MASK);
 rgval |= ((ratio->horz - 1) << ISPRSZ_CNT_HRSZ_SHIFT)
    & ISPRSZ_CNT_HRSZ_MASK;
 rgval |= ((ratio->vert - 1) << ISPRSZ_CNT_VRSZ_SHIFT)
    & ISPRSZ_CNT_VRSZ_MASK;
 isp_reg_writel(isp, rgval, OMAP3_ISP_IOMEM_RESZ, ISPRSZ_CNT);


 if (ratio->horz > MID_RESIZE_VALUE)
  h_filter = &filter_coefs.h_filter_coef_7tap[0];
 else
  h_filter = &filter_coefs.h_filter_coef_4tap[0];


 if (ratio->vert > MID_RESIZE_VALUE)
  v_filter = &filter_coefs.v_filter_coef_7tap[0];
 else
  v_filter = &filter_coefs.v_filter_coef_4tap[0];

 resizer_set_filters(res, h_filter, v_filter);
}
