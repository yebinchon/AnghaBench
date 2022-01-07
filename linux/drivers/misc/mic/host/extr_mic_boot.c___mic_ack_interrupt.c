
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_device {int dev; } ;
struct mic_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* intr_workarounds ) (struct mic_device*) ;} ;


 int stub1 (struct mic_device*) ;
 struct mic_device* vpdev_to_mdev (int *) ;

__attribute__((used)) static void __mic_ack_interrupt(struct vop_device *vpdev, int num)
{
 struct mic_device *mdev = vpdev_to_mdev(&vpdev->dev);

 mdev->ops->intr_workarounds(mdev);
}
