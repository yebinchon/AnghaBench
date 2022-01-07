
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b53_device {scalar_t__ chip_id; } ;


 scalar_t__ BCM5325_DEVICE_ID ;

__attribute__((used)) static inline int is5325(struct b53_device *dev)
{
 return dev->chip_id == BCM5325_DEVICE_ID;
}
