
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mtk_vcodec_dev {int v4l2_dev; scalar_t__ vfd_enc; scalar_t__ m2m_dev_enc; int encode_workqueue; } ;


 int destroy_workqueue (int ) ;
 int flush_workqueue (int ) ;
 int mtk_v4l2_debug_enter () ;
 int mtk_vcodec_release_enc_pm (struct mtk_vcodec_dev*) ;
 struct mtk_vcodec_dev* platform_get_drvdata (struct platform_device*) ;
 int v4l2_device_unregister (int *) ;
 int v4l2_m2m_release (scalar_t__) ;
 int video_unregister_device (scalar_t__) ;

__attribute__((used)) static int mtk_vcodec_enc_remove(struct platform_device *pdev)
{
 struct mtk_vcodec_dev *dev = platform_get_drvdata(pdev);

 mtk_v4l2_debug_enter();
 flush_workqueue(dev->encode_workqueue);
 destroy_workqueue(dev->encode_workqueue);
 if (dev->m2m_dev_enc)
  v4l2_m2m_release(dev->m2m_dev_enc);

 if (dev->vfd_enc)
  video_unregister_device(dev->vfd_enc);

 v4l2_device_unregister(&dev->v4l2_dev);
 mtk_vcodec_release_enc_pm(dev);
 return 0;
}
