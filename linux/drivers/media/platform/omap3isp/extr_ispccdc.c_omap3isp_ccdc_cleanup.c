
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int fpnum; int dma; int * addr; } ;
struct TYPE_5__ {int free_queue; int table_work; int request; } ;
struct TYPE_4__ {int entity; } ;
struct isp_ccdc_device {int ioctl_lock; TYPE_3__ fpc; TYPE_2__ lsc; TYPE_1__ subdev; int video_out; } ;
struct isp_device {int dev; struct isp_ccdc_device isp_ccdc; } ;


 int cancel_work_sync (int *) ;
 int ccdc_lsc_free_queue (struct isp_ccdc_device*,int *) ;
 int ccdc_lsc_free_request (struct isp_ccdc_device*,int ) ;
 int dma_free_coherent (int ,int,int *,int ) ;
 int media_entity_cleanup (int *) ;
 int mutex_destroy (int *) ;
 int omap3isp_video_cleanup (int *) ;

void omap3isp_ccdc_cleanup(struct isp_device *isp)
{
 struct isp_ccdc_device *ccdc = &isp->isp_ccdc;

 omap3isp_video_cleanup(&ccdc->video_out);
 media_entity_cleanup(&ccdc->subdev.entity);




 ccdc_lsc_free_request(ccdc, ccdc->lsc.request);
 cancel_work_sync(&ccdc->lsc.table_work);
 ccdc_lsc_free_queue(ccdc, &ccdc->lsc.free_queue);

 if (ccdc->fpc.addr != ((void*)0))
  dma_free_coherent(isp->dev, ccdc->fpc.fpnum * 4, ccdc->fpc.addr,
      ccdc->fpc.dma);

 mutex_destroy(&ccdc->ioctl_lock);
}
