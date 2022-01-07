
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;


 int kfree (struct video_device*) ;
 int v4l2_subdev_release (int ) ;
 int video_get_drvdata (struct video_device*) ;

__attribute__((used)) static void v4l2_device_release_subdev_node(struct video_device *vdev)
{
 v4l2_subdev_release(video_get_drvdata(vdev));
 kfree(vdev);
}
