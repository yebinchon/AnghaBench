
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xvip_composite_device {int media_dev; int v4l2_dev; } ;


 int media_device_cleanup (int *) ;
 int media_device_unregister (int *) ;
 int v4l2_device_unregister (int *) ;

__attribute__((used)) static void xvip_composite_v4l2_cleanup(struct xvip_composite_device *xdev)
{
 v4l2_device_unregister(&xdev->v4l2_dev);
 media_device_unregister(&xdev->media_dev);
 media_device_cleanup(&xdev->media_dev);
}
