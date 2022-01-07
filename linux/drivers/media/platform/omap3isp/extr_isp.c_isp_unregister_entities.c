
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_device {int media_dev; int v4l2_dev; int isp_hist; int isp_af; int isp_aewb; int isp_res; int isp_prev; int isp_ccdc; int isp_ccp2; int isp_csi2a; } ;


 int media_device_cleanup (int *) ;
 int media_device_unregister (int *) ;
 int omap3isp_ccdc_unregister_entities (int *) ;
 int omap3isp_ccp2_unregister_entities (int *) ;
 int omap3isp_csi2_unregister_entities (int *) ;
 int omap3isp_preview_unregister_entities (int *) ;
 int omap3isp_resizer_unregister_entities (int *) ;
 int omap3isp_stat_unregister_entities (int *) ;
 int v4l2_device_unregister (int *) ;

__attribute__((used)) static void isp_unregister_entities(struct isp_device *isp)
{
 media_device_unregister(&isp->media_dev);

 omap3isp_csi2_unregister_entities(&isp->isp_csi2a);
 omap3isp_ccp2_unregister_entities(&isp->isp_ccp2);
 omap3isp_ccdc_unregister_entities(&isp->isp_ccdc);
 omap3isp_preview_unregister_entities(&isp->isp_prev);
 omap3isp_resizer_unregister_entities(&isp->isp_res);
 omap3isp_stat_unregister_entities(&isp->isp_aewb);
 omap3isp_stat_unregister_entities(&isp->isp_af);
 omap3isp_stat_unregister_entities(&isp->isp_hist);

 v4l2_device_unregister(&isp->v4l2_dev);
 media_device_cleanup(&isp->media_dev);
}
