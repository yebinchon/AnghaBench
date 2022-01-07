
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptp_qoriq {int dummy; } ;
struct device {int dummy; } ;
struct fsl_mc_device {int mc_io; int mc_handle; struct device dev; } ;


 struct ptp_qoriq* dev_get_drvdata (struct device*) ;
 int dpaa2_phc_index ;
 int dprtc_close (int ,int ,int ) ;
 int fsl_mc_free_irqs (struct fsl_mc_device*) ;
 int fsl_mc_portal_free (int ) ;
 int ptp_qoriq_free (struct ptp_qoriq*) ;

__attribute__((used)) static int dpaa2_ptp_remove(struct fsl_mc_device *mc_dev)
{
 struct device *dev = &mc_dev->dev;
 struct ptp_qoriq *ptp_qoriq;

 ptp_qoriq = dev_get_drvdata(dev);

 dpaa2_phc_index = -1;
 ptp_qoriq_free(ptp_qoriq);

 fsl_mc_free_irqs(mc_dev);
 dprtc_close(mc_dev->mc_io, 0, mc_dev->mc_handle);
 fsl_mc_portal_free(mc_dev->mc_io);

 return 0;
}
