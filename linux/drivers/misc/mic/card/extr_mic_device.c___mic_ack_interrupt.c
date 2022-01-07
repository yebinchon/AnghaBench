
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_device {int dummy; } ;
struct mic_driver {int mdev; } ;


 int mic_ack_interrupt (int *) ;
 struct mic_driver* vpdev_to_mdrv (struct vop_device*) ;

__attribute__((used)) static void __mic_ack_interrupt(struct vop_device *vpdev, int num)
{
 struct mic_driver *mdrv = vpdev_to_mdrv(vpdev);

 mic_ack_interrupt(&mdrv->mdev);
}
