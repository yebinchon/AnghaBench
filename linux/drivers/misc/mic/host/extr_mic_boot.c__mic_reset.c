
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mic_device {TYPE_1__* ops; } ;
struct cosm_device {int dummy; } ;
struct TYPE_2__ {int (* reset ) (struct mic_device*) ;int (* reset_fw_ready ) (struct mic_device*) ;} ;


 struct mic_device* cosmdev_to_mdev (struct cosm_device*) ;
 int stub1 (struct mic_device*) ;
 int stub2 (struct mic_device*) ;

__attribute__((used)) static void _mic_reset(struct cosm_device *cdev)
{
 struct mic_device *mdev = cosmdev_to_mdev(cdev);

 mdev->ops->reset_fw_ready(mdev);
 mdev->ops->reset(mdev);
}
