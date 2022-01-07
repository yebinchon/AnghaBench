
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rvin_dev {scalar_t__ base; } ;


 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static void rvin_write(struct rvin_dev *vin, u32 value, u32 offset)
{
 iowrite32(value, vin->base + offset);
}
