
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct b53_device {int dummy; } ;


 scalar_t__ B53_INVALID_LANE ;
 int B53_SERDES_MII_REG (int ) ;
 int BMCR_ANRESTART ;
 int MII_BMCR ;
 int SERDES_MII_BLK ;
 scalar_t__ b53_serdes_map_lane (struct b53_device*,int) ;
 int b53_serdes_read (struct b53_device*,scalar_t__,int ,int ) ;
 int b53_serdes_write (struct b53_device*,scalar_t__,int ,int ,int ) ;

void b53_serdes_an_restart(struct b53_device *dev, int port)
{
 u8 lane = b53_serdes_map_lane(dev, port);
 u16 reg;

 if (lane == B53_INVALID_LANE)
  return;

 reg = b53_serdes_read(dev, lane, B53_SERDES_MII_REG(MII_BMCR),
         SERDES_MII_BLK);
 reg |= BMCR_ANRESTART;
 b53_serdes_write(dev, lane, B53_SERDES_MII_REG(MII_BMCR),
    SERDES_MII_BLK, reg);
}
