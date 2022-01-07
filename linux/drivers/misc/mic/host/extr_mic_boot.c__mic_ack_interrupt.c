
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mic_device {TYPE_1__* ops; } ;
struct mbus_device {int dummy; } ;
struct TYPE_2__ {int (* intr_workarounds ) (struct mic_device*) ;} ;


 struct mic_device* mbdev_to_mdev (struct mbus_device*) ;
 int stub1 (struct mic_device*) ;

__attribute__((used)) static void _mic_ack_interrupt(struct mbus_device *mbdev, int num)
{
 struct mic_device *mdev = mbdev_to_mdev(mbdev);
 mdev->ops->intr_workarounds(mdev);
}
