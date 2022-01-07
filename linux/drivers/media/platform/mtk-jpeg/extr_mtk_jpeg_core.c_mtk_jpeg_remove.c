
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct mtk_jpeg_dev {int v4l2_dev; int m2m_dev; int dec_vdev; } ;


 struct mtk_jpeg_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int v4l2_device_unregister (int *) ;
 int v4l2_m2m_release (int ) ;
 int video_device_release (int ) ;
 int video_unregister_device (int ) ;

__attribute__((used)) static int mtk_jpeg_remove(struct platform_device *pdev)
{
 struct mtk_jpeg_dev *jpeg = platform_get_drvdata(pdev);

 pm_runtime_disable(&pdev->dev);
 video_unregister_device(jpeg->dec_vdev);
 video_device_release(jpeg->dec_vdev);
 v4l2_m2m_release(jpeg->m2m_dev);
 v4l2_device_unregister(&jpeg->v4l2_dev);

 return 0;
}
