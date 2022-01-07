
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_device {int dummy; } ;
struct device {int parent; } ;


 struct mic_device* dev_get_drvdata (int ) ;

__attribute__((used)) static inline struct mic_device *vpdev_to_mdev(struct device *dev)
{
 return dev_get_drvdata(dev->parent);
}
