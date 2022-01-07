
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scif_hw_dev {int dummy; } ;
struct mic_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* send_intr ) (struct mic_device*,int) ;} ;


 struct mic_device* scdev_to_mdev (struct scif_hw_dev*) ;
 int stub1 (struct mic_device*,int) ;

__attribute__((used)) static void ___mic_send_intr(struct scif_hw_dev *scdev, int db)
{
 struct mic_device *mdev = scdev_to_mdev(scdev);

 mdev->ops->send_intr(mdev, db);
}
