
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap3isp_ccdc_lsc_config {int offset; int gain_mode_n; int gain_mode_m; int gain_format; int initial_x; int initial_y; } ;
struct isp_device {int dummy; } ;
struct isp_ccdc_device {int dummy; } ;


 int ISPCCDC_LSC_CONFIG ;
 int ISPCCDC_LSC_GAIN_FORMAT_SHIFT ;
 int ISPCCDC_LSC_GAIN_MODE_M_SHIFT ;
 int ISPCCDC_LSC_GAIN_MODE_N_SHIFT ;
 int ISPCCDC_LSC_INITIAL ;
 int ISPCCDC_LSC_INITIAL_X_MASK ;
 int ISPCCDC_LSC_INITIAL_X_SHIFT ;
 int ISPCCDC_LSC_INITIAL_Y_MASK ;
 int ISPCCDC_LSC_INITIAL_Y_SHIFT ;
 int ISPCCDC_LSC_TABLE_OFFSET ;
 int OMAP3_ISP_IOMEM_CCDC ;
 int isp_reg_writel (struct isp_device*,int,int ,int ) ;
 struct isp_device* to_isp_device (struct isp_ccdc_device*) ;

__attribute__((used)) static void ccdc_lsc_setup_regs(struct isp_ccdc_device *ccdc,
    struct omap3isp_ccdc_lsc_config *cfg)
{
 struct isp_device *isp = to_isp_device(ccdc);
 int reg;

 isp_reg_writel(isp, cfg->offset, OMAP3_ISP_IOMEM_CCDC,
         ISPCCDC_LSC_TABLE_OFFSET);

 reg = 0;
 reg |= cfg->gain_mode_n << ISPCCDC_LSC_GAIN_MODE_N_SHIFT;
 reg |= cfg->gain_mode_m << ISPCCDC_LSC_GAIN_MODE_M_SHIFT;
 reg |= cfg->gain_format << ISPCCDC_LSC_GAIN_FORMAT_SHIFT;
 isp_reg_writel(isp, reg, OMAP3_ISP_IOMEM_CCDC, ISPCCDC_LSC_CONFIG);

 reg = 0;
 reg &= ~ISPCCDC_LSC_INITIAL_X_MASK;
 reg |= cfg->initial_x << ISPCCDC_LSC_INITIAL_X_SHIFT;
 reg &= ~ISPCCDC_LSC_INITIAL_Y_MASK;
 reg |= cfg->initial_y << ISPCCDC_LSC_INITIAL_Y_SHIFT;
 isp_reg_writel(isp, reg, OMAP3_ISP_IOMEM_CCDC,
         ISPCCDC_LSC_INITIAL);
}
