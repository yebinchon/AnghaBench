
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct b53_device {int serdes_lane; } ;


 int B53_SERDES_LANE ;
 int SERDES_XGXSBLK0_BLOCKADDRESS ;
 int WARN_ON (int) ;
 int b53_serdes_write_blk (struct b53_device*,int ,int ,int) ;

__attribute__((used)) static void b53_serdes_set_lane(struct b53_device *dev, u8 lane)
{
 if (dev->serdes_lane == lane)
  return;

 WARN_ON(lane > 1);

 b53_serdes_write_blk(dev, B53_SERDES_LANE,
        SERDES_XGXSBLK0_BLOCKADDRESS, lane);
 dev->serdes_lane = lane;
}
