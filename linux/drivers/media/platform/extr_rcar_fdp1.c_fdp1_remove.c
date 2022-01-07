
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct fdp1_dev {int v4l2_dev; int vfd; int m2m_dev; } ;


 struct fdp1_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int v4l2_device_unregister (int *) ;
 int v4l2_m2m_release (int ) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static int fdp1_remove(struct platform_device *pdev)
{
 struct fdp1_dev *fdp1 = platform_get_drvdata(pdev);

 v4l2_m2m_release(fdp1->m2m_dev);
 video_unregister_device(&fdp1->vfd);
 v4l2_device_unregister(&fdp1->v4l2_dev);
 pm_runtime_disable(&pdev->dev);

 return 0;
}
