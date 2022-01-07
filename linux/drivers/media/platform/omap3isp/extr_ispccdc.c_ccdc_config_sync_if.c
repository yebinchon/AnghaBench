
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_mbus_framefmt {scalar_t__ code; } ;
struct isp_parallel_cfg {scalar_t__ fld_pol; scalar_t__ vs_pol; scalar_t__ hs_pol; scalar_t__ data_pol; } ;
struct isp_device {int dummy; } ;
struct isp_ccdc_device {scalar_t__ bt656; struct v4l2_mbus_framefmt* formats; } ;


 size_t CCDC_PAD_SINK ;
 int ISPCCDC_CFG ;
 int ISPCCDC_CFG_Y8POS ;
 int ISPCCDC_REC656IF ;
 int ISPCCDC_REC656IF_ECCFVH ;
 int ISPCCDC_REC656IF_R656ON ;
 int ISPCCDC_SYN_MODE ;
 int ISPCCDC_SYN_MODE_DATAPOL ;
 int ISPCCDC_SYN_MODE_DATSIZ_10 ;
 int ISPCCDC_SYN_MODE_DATSIZ_11 ;
 int ISPCCDC_SYN_MODE_DATSIZ_12 ;
 int ISPCCDC_SYN_MODE_DATSIZ_8 ;
 int ISPCCDC_SYN_MODE_FLDPOL ;
 int ISPCCDC_SYN_MODE_HDPOL ;
 int ISPCCDC_SYN_MODE_INPMOD_YCBCR16 ;
 int ISPCCDC_SYN_MODE_INPMOD_YCBCR8 ;
 int ISPCCDC_SYN_MODE_VDHDEN ;
 int ISPCCDC_SYN_MODE_VDPOL ;
 scalar_t__ MEDIA_BUS_FMT_UYVY8_2X8 ;
 scalar_t__ MEDIA_BUS_FMT_YUYV8_2X8 ;
 int OMAP3_ISP_IOMEM_CCDC ;
 int isp_reg_clr (struct isp_device*,int ,int ,int) ;
 int isp_reg_set (struct isp_device*,int ,int ,int) ;
 int isp_reg_writel (struct isp_device*,int ,int ,int ) ;
 struct isp_device* to_isp_device (struct isp_ccdc_device*) ;

__attribute__((used)) static void ccdc_config_sync_if(struct isp_ccdc_device *ccdc,
    struct isp_parallel_cfg *parcfg,
    unsigned int data_size)
{
 struct isp_device *isp = to_isp_device(ccdc);
 const struct v4l2_mbus_framefmt *format;
 u32 syn_mode = ISPCCDC_SYN_MODE_VDHDEN;

 format = &ccdc->formats[CCDC_PAD_SINK];

 if (format->code == MEDIA_BUS_FMT_YUYV8_2X8 ||
     format->code == MEDIA_BUS_FMT_UYVY8_2X8) {






  if (ccdc->bt656)
   syn_mode |= ISPCCDC_SYN_MODE_INPMOD_YCBCR8;
  else
   syn_mode |= ISPCCDC_SYN_MODE_INPMOD_YCBCR16;
 }

 switch (data_size) {
 case 8:
  syn_mode |= ISPCCDC_SYN_MODE_DATSIZ_8;
  break;
 case 10:
  syn_mode |= ISPCCDC_SYN_MODE_DATSIZ_10;
  break;
 case 11:
  syn_mode |= ISPCCDC_SYN_MODE_DATSIZ_11;
  break;
 case 12:
  syn_mode |= ISPCCDC_SYN_MODE_DATSIZ_12;
  break;
 }

 if (parcfg && parcfg->data_pol)
  syn_mode |= ISPCCDC_SYN_MODE_DATAPOL;

 if (parcfg && parcfg->hs_pol)
  syn_mode |= ISPCCDC_SYN_MODE_HDPOL;




 if ((parcfg && parcfg->vs_pol) || ccdc->bt656)
  syn_mode |= ISPCCDC_SYN_MODE_VDPOL;

 if (parcfg && parcfg->fld_pol)
  syn_mode |= ISPCCDC_SYN_MODE_FLDPOL;

 isp_reg_writel(isp, syn_mode, OMAP3_ISP_IOMEM_CCDC, ISPCCDC_SYN_MODE);




 if (format->code == MEDIA_BUS_FMT_UYVY8_2X8)
  isp_reg_set(isp, OMAP3_ISP_IOMEM_CCDC, ISPCCDC_CFG,
       ISPCCDC_CFG_Y8POS);
 else
  isp_reg_clr(isp, OMAP3_ISP_IOMEM_CCDC, ISPCCDC_CFG,
       ISPCCDC_CFG_Y8POS);




 if (ccdc->bt656)
  isp_reg_set(isp, OMAP3_ISP_IOMEM_CCDC, ISPCCDC_REC656IF,
       ISPCCDC_REC656IF_R656ON | ISPCCDC_REC656IF_ECCFVH);
 else
  isp_reg_clr(isp, OMAP3_ISP_IOMEM_CCDC, ISPCCDC_REC656IF,
       ISPCCDC_REC656IF_R656ON | ISPCCDC_REC656IF_ECCFVH);

}
