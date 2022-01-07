
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct scif_hw_dev {TYPE_1__ dev; } ;
struct mic_device {int dummy; } ;


 struct mic_device* dev_get_drvdata (int ) ;

__attribute__((used)) static inline struct mic_device *scdev_to_mdev(struct scif_hw_dev *scdev)
{
 return dev_get_drvdata(scdev->dev.parent);
}
