
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct b53_device {int dummy; } ;


 int b53_serdes_set_lane (struct b53_device*,int ) ;
 int b53_serdes_write_blk (struct b53_device*,int ,int ,int ) ;

__attribute__((used)) static void b53_serdes_write(struct b53_device *dev, u8 lane,
        u8 offset, u16 block, u16 value)
{
 b53_serdes_set_lane(dev, lane);
 b53_serdes_write_blk(dev, offset, block, value);
}
