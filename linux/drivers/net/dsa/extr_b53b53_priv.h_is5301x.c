
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b53_device {scalar_t__ chip_id; } ;


 scalar_t__ BCM53010_DEVICE_ID ;
 scalar_t__ BCM53011_DEVICE_ID ;
 scalar_t__ BCM53012_DEVICE_ID ;
 scalar_t__ BCM53018_DEVICE_ID ;
 scalar_t__ BCM53019_DEVICE_ID ;

__attribute__((used)) static inline int is5301x(struct b53_device *dev)
{
 return dev->chip_id == BCM53010_DEVICE_ID ||
  dev->chip_id == BCM53011_DEVICE_ID ||
  dev->chip_id == BCM53012_DEVICE_ID ||
  dev->chip_id == BCM53018_DEVICE_ID ||
  dev->chip_id == BCM53019_DEVICE_ID;
}
