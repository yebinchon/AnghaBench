
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timbradio {int v4l2_dev; int video_dev; } ;
struct platform_device {int dummy; } ;


 struct timbradio* platform_get_drvdata (struct platform_device*) ;
 int v4l2_device_unregister (int *) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static int timbradio_remove(struct platform_device *pdev)
{
 struct timbradio *tr = platform_get_drvdata(pdev);

 video_unregister_device(&tr->video_dev);
 v4l2_device_unregister(&tr->v4l2_dev);
 return 0;
}
