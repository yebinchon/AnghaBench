
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int u32 ;
struct isp_pipeline {int error; } ;
struct TYPE_20__ {int entity; } ;
struct TYPE_11__ {TYPE_9__ subdev; } ;
struct TYPE_18__ {int entity; } ;
struct TYPE_19__ {TYPE_7__ subdev; } ;
struct TYPE_16__ {int entity; } ;
struct TYPE_17__ {TYPE_5__ subdev; } ;
struct TYPE_14__ {int entity; } ;
struct TYPE_15__ {TYPE_3__ subdev; } ;
struct TYPE_12__ {int entity; } ;
struct TYPE_13__ {TYPE_1__ subdev; } ;
struct isp_device {int isp_aewb; int isp_af; TYPE_10__ isp_res; TYPE_8__ isp_prev; TYPE_6__ isp_ccdc; TYPE_4__ isp_csi2a; TYPE_2__ isp_ccp2; struct device* dev; } ;
struct device {int dummy; } ;


 int ISPSBL_PCR ;
 int ISPSBL_PCR_CCDCPRV_2_RSZ_OVF ;
 int ISPSBL_PCR_CCDC_WBL_OVF ;
 int ISPSBL_PCR_CSIA_WBL_OVF ;
 int ISPSBL_PCR_CSIB_WBL_OVF ;
 int ISPSBL_PCR_H3A_AEAWB_WBL_OVF ;
 int ISPSBL_PCR_H3A_AF_WBL_OVF ;
 int ISPSBL_PCR_PRV_WBL_OVF ;
 int ISPSBL_PCR_RSZ1_WBL_OVF ;
 int ISPSBL_PCR_RSZ2_WBL_OVF ;
 int ISPSBL_PCR_RSZ3_WBL_OVF ;
 int ISPSBL_PCR_RSZ4_WBL_OVF ;
 int OMAP3_ISP_IOMEM_SBL ;
 int dev_dbg (struct device*,char*,int) ;
 int isp_reg_readl (struct isp_device*,int ,int ) ;
 int isp_reg_writel (struct isp_device*,int,int ,int ) ;
 int omap3isp_stat_sbl_overflow (int *) ;
 struct isp_pipeline* to_isp_pipeline (int *) ;

__attribute__((used)) static void isp_isr_sbl(struct isp_device *isp)
{
 struct device *dev = isp->dev;
 struct isp_pipeline *pipe;
 u32 sbl_pcr;





 sbl_pcr = isp_reg_readl(isp, OMAP3_ISP_IOMEM_SBL, ISPSBL_PCR);
 isp_reg_writel(isp, sbl_pcr, OMAP3_ISP_IOMEM_SBL, ISPSBL_PCR);
 sbl_pcr &= ~ISPSBL_PCR_CCDCPRV_2_RSZ_OVF;

 if (sbl_pcr)
  dev_dbg(dev, "SBL overflow (PCR = 0x%08x)\n", sbl_pcr);

 if (sbl_pcr & ISPSBL_PCR_CSIB_WBL_OVF) {
  pipe = to_isp_pipeline(&isp->isp_ccp2.subdev.entity);
  if (pipe != ((void*)0))
   pipe->error = 1;
 }

 if (sbl_pcr & ISPSBL_PCR_CSIA_WBL_OVF) {
  pipe = to_isp_pipeline(&isp->isp_csi2a.subdev.entity);
  if (pipe != ((void*)0))
   pipe->error = 1;
 }

 if (sbl_pcr & ISPSBL_PCR_CCDC_WBL_OVF) {
  pipe = to_isp_pipeline(&isp->isp_ccdc.subdev.entity);
  if (pipe != ((void*)0))
   pipe->error = 1;
 }

 if (sbl_pcr & ISPSBL_PCR_PRV_WBL_OVF) {
  pipe = to_isp_pipeline(&isp->isp_prev.subdev.entity);
  if (pipe != ((void*)0))
   pipe->error = 1;
 }

 if (sbl_pcr & (ISPSBL_PCR_RSZ1_WBL_OVF
         | ISPSBL_PCR_RSZ2_WBL_OVF
         | ISPSBL_PCR_RSZ3_WBL_OVF
         | ISPSBL_PCR_RSZ4_WBL_OVF)) {
  pipe = to_isp_pipeline(&isp->isp_res.subdev.entity);
  if (pipe != ((void*)0))
   pipe->error = 1;
 }

 if (sbl_pcr & ISPSBL_PCR_H3A_AF_WBL_OVF)
  omap3isp_stat_sbl_overflow(&isp->isp_af);

 if (sbl_pcr & ISPSBL_PCR_H3A_AEAWB_WBL_OVF)
  omap3isp_stat_sbl_overflow(&isp->isp_aewb);
}
