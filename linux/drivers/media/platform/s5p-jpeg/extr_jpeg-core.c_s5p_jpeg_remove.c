
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s5p_jpeg {int * clocks; TYPE_1__* variant; int v4l2_dev; int m2m_dev; int vfd_encoder; int vfd_decoder; int dev; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int num_clocks; } ;


 int clk_disable_unprepare (int ) ;
 struct s5p_jpeg* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_status_suspended (int *) ;
 int v4l2_device_unregister (int *) ;
 int v4l2_m2m_release (int ) ;
 int vb2_dma_contig_clear_max_seg_size (int *) ;
 int video_unregister_device (int ) ;

__attribute__((used)) static int s5p_jpeg_remove(struct platform_device *pdev)
{
 struct s5p_jpeg *jpeg = platform_get_drvdata(pdev);
 int i;

 pm_runtime_disable(jpeg->dev);

 video_unregister_device(jpeg->vfd_decoder);
 video_unregister_device(jpeg->vfd_encoder);
 vb2_dma_contig_clear_max_seg_size(&pdev->dev);
 v4l2_m2m_release(jpeg->m2m_dev);
 v4l2_device_unregister(&jpeg->v4l2_dev);

 if (!pm_runtime_status_suspended(&pdev->dev)) {
  for (i = jpeg->variant->num_clocks - 1; i >= 0; i--)
   clk_disable_unprepare(jpeg->clocks[i]);
 }

 return 0;
}
