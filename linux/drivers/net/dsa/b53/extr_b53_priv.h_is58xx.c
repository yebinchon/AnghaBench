
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b53_device {scalar_t__ chip_id; } ;


 scalar_t__ BCM583XX_DEVICE_ID ;
 scalar_t__ BCM58XX_DEVICE_ID ;
 scalar_t__ BCM7278_DEVICE_ID ;
 scalar_t__ BCM7445_DEVICE_ID ;

__attribute__((used)) static inline int is58xx(struct b53_device *dev)
{
 return dev->chip_id == BCM58XX_DEVICE_ID ||
  dev->chip_id == BCM583XX_DEVICE_ID ||
  dev->chip_id == BCM7445_DEVICE_ID ||
  dev->chip_id == BCM7278_DEVICE_ID;
}
