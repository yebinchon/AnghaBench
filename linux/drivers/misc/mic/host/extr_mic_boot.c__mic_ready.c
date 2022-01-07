
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mic_device {TYPE_1__* ops; } ;
struct cosm_device {int dummy; } ;
struct TYPE_2__ {int (* is_fw_ready ) (struct mic_device*) ;} ;


 struct mic_device* cosmdev_to_mdev (struct cosm_device*) ;
 int stub1 (struct mic_device*) ;

__attribute__((used)) static bool _mic_ready(struct cosm_device *cdev)
{
 struct mic_device *mdev = cosmdev_to_mdev(cdev);

 return mdev->ops->is_fw_ready(mdev);
}
