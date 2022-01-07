
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dev; } ;


 int put_device (int *) ;

__attribute__((used)) static inline void video_put(struct video_device *vdev)
{
 put_device(&vdev->dev);
}
