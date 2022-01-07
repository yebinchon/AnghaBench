
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rvin_dev {scalar_t__ base; } ;


 scalar_t__ ioread32 (scalar_t__) ;

__attribute__((used)) static u32 rvin_read(struct rvin_dev *vin, u32 offset)
{
 return ioread32(vin->base + offset);
}
