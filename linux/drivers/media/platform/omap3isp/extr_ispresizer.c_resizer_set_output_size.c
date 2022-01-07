
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isp_res_device {int dummy; } ;
struct isp_device {int dummy; } ;


 int ISPRSZ_OUT_SIZE ;
 int ISPRSZ_OUT_SIZE_HORZ_MASK ;
 int ISPRSZ_OUT_SIZE_HORZ_SHIFT ;
 int ISPRSZ_OUT_SIZE_VERT_MASK ;
 int ISPRSZ_OUT_SIZE_VERT_SHIFT ;
 int OMAP3_ISP_IOMEM_RESZ ;
 int isp_reg_writel (struct isp_device*,int,int ,int ) ;
 struct isp_device* to_isp_device (struct isp_res_device*) ;

__attribute__((used)) static void resizer_set_output_size(struct isp_res_device *res,
        u32 width, u32 height)
{
 struct isp_device *isp = to_isp_device(res);
 u32 rgval;

 rgval = (width << ISPRSZ_OUT_SIZE_HORZ_SHIFT)
   & ISPRSZ_OUT_SIZE_HORZ_MASK;
 rgval |= (height << ISPRSZ_OUT_SIZE_VERT_SHIFT)
   & ISPRSZ_OUT_SIZE_VERT_MASK;
 isp_reg_writel(isp, rgval, OMAP3_ISP_IOMEM_RESZ, ISPRSZ_OUT_SIZE);
}
