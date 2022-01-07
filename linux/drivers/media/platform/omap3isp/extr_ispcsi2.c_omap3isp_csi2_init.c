
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_csi2_device {int available; int wait; void* state; int * phy; int regs2; int regs1; struct isp_device* isp; } ;
struct isp_device {scalar_t__ revision; int isp_csiphy1; int isp_csiphy2; struct isp_csi2_device isp_csi2c; struct isp_csi2_device isp_csi2a; } ;


 void* ISP_PIPELINE_STREAM_STOPPED ;
 scalar_t__ ISP_REVISION_15_0 ;
 int OMAP3_ISP_IOMEM_CSI2A_REGS1 ;
 int OMAP3_ISP_IOMEM_CSI2A_REGS2 ;
 int OMAP3_ISP_IOMEM_CSI2C_REGS1 ;
 int OMAP3_ISP_IOMEM_CSI2C_REGS2 ;
 int csi2_init_entities (struct isp_csi2_device*) ;
 int init_waitqueue_head (int *) ;

int omap3isp_csi2_init(struct isp_device *isp)
{
 struct isp_csi2_device *csi2a = &isp->isp_csi2a;
 struct isp_csi2_device *csi2c = &isp->isp_csi2c;
 int ret;

 csi2a->isp = isp;
 csi2a->available = 1;
 csi2a->regs1 = OMAP3_ISP_IOMEM_CSI2A_REGS1;
 csi2a->regs2 = OMAP3_ISP_IOMEM_CSI2A_REGS2;
 csi2a->phy = &isp->isp_csiphy2;
 csi2a->state = ISP_PIPELINE_STREAM_STOPPED;
 init_waitqueue_head(&csi2a->wait);

 ret = csi2_init_entities(csi2a);
 if (ret < 0)
  return ret;

 if (isp->revision == ISP_REVISION_15_0) {
  csi2c->isp = isp;
  csi2c->available = 1;
  csi2c->regs1 = OMAP3_ISP_IOMEM_CSI2C_REGS1;
  csi2c->regs2 = OMAP3_ISP_IOMEM_CSI2C_REGS2;
  csi2c->phy = &isp->isp_csiphy1;
  csi2c->state = ISP_PIPELINE_STREAM_STOPPED;
  init_waitqueue_head(&csi2c->wait);
 }

 return 0;
}
