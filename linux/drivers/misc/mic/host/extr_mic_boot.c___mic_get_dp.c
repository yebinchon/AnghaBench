
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_device {int dev; } ;
struct mic_device {void* dp; } ;


 struct mic_device* vpdev_to_mdev (int *) ;

__attribute__((used)) static void *__mic_get_dp(struct vop_device *vpdev)
{
 struct mic_device *mdev = vpdev_to_mdev(&vpdev->dev);

 return mdev->dp;
}
