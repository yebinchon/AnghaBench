
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scif_hw_dev {int dummy; } ;
struct mic_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* intr_workarounds ) (struct mic_device*) ;} ;


 struct mic_device* scdev_to_mdev (struct scif_hw_dev*) ;
 int stub1 (struct mic_device*) ;

__attribute__((used)) static void ___mic_ack_interrupt(struct scif_hw_dev *scdev, int num)
{
 struct mic_device *mdev = scdev_to_mdev(scdev);

 mdev->ops->intr_workarounds(mdev);
}
