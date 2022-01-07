
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct phylink_link_state {scalar_t__ interface; } ;
struct b53_device {int dummy; } ;


 scalar_t__ B53_INVALID_LANE ;
 int B53_SERDES_DIGITAL_CONTROL (int) ;
 int FIBER_MODE_1000X ;
 scalar_t__ PHY_INTERFACE_MODE_1000BASEX ;
 int SERDES_DIGITAL_BLK ;
 scalar_t__ b53_serdes_map_lane (struct b53_device*,int) ;
 int b53_serdes_read (struct b53_device*,scalar_t__,int ,int ) ;
 int b53_serdes_write (struct b53_device*,scalar_t__,int ,int ,int ) ;

void b53_serdes_config(struct b53_device *dev, int port, unsigned int mode,
         const struct phylink_link_state *state)
{
 u8 lane = b53_serdes_map_lane(dev, port);
 u16 reg;

 if (lane == B53_INVALID_LANE)
  return;

 reg = b53_serdes_read(dev, lane, B53_SERDES_DIGITAL_CONTROL(1),
         SERDES_DIGITAL_BLK);
 if (state->interface == PHY_INTERFACE_MODE_1000BASEX)
  reg |= FIBER_MODE_1000X;
 else
  reg &= ~FIBER_MODE_1000X;
 b53_serdes_write(dev, lane, B53_SERDES_DIGITAL_CONTROL(1),
    SERDES_DIGITAL_BLK, reg);
}
