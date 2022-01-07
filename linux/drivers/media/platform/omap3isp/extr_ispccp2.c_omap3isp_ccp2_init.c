
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_ccp2_device {int * phy; int * vdds_csib; int wait; } ;
struct isp_device {scalar_t__ revision; int isp_csiphy1; int isp_csiphy2; int dev; struct isp_ccp2_device isp_ccp2; } ;


 int EPROBE_DEFER ;
 scalar_t__ ISP_REVISION_15_0 ;
 scalar_t__ ISP_REVISION_2_0 ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int ccp2_init_entities (struct isp_ccp2_device*) ;
 int ccp2_reset (struct isp_ccp2_device*) ;
 int dev_dbg (int ,char*) ;
 int * devm_regulator_get (int ,char*) ;
 int init_waitqueue_head (int *) ;

int omap3isp_ccp2_init(struct isp_device *isp)
{
 struct isp_ccp2_device *ccp2 = &isp->isp_ccp2;
 int ret;

 init_waitqueue_head(&ccp2->wait);
 if (isp->revision == ISP_REVISION_2_0) {
  ccp2->vdds_csib = devm_regulator_get(isp->dev, "vdds_csib");
  if (IS_ERR(ccp2->vdds_csib)) {
   if (PTR_ERR(ccp2->vdds_csib) == -EPROBE_DEFER) {
    dev_dbg(isp->dev,
     "Can't get regulator vdds_csib, deferring probing\n");
    return -EPROBE_DEFER;
   }
   dev_dbg(isp->dev,
    "Could not get regulator vdds_csib\n");
   ccp2->vdds_csib = ((void*)0);
  }
  ccp2->phy = &isp->isp_csiphy2;
 } else if (isp->revision == ISP_REVISION_15_0) {
  ccp2->phy = &isp->isp_csiphy1;
 }

 ret = ccp2_init_entities(ccp2);
 if (ret < 0)
  return ret;

 ccp2_reset(ccp2);
 return 0;
}
