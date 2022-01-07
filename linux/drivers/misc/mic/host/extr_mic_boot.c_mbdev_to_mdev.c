
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mic_device {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct mbus_device {TYPE_1__ dev; } ;


 struct mic_device* dev_get_drvdata (int ) ;

__attribute__((used)) static inline struct mic_device *mbdev_to_mdev(struct mbus_device *mbdev)
{
 return dev_get_drvdata(mbdev->dev.parent);
}
