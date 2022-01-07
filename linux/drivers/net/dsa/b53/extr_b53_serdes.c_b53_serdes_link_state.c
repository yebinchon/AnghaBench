
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct phylink_link_state {int an_complete; int link; int pause; int duplex; int speed; } ;
struct b53_device {int dummy; } ;


 scalar_t__ B53_INVALID_LANE ;
 int B53_SERDES_DIGITAL_STATUS ;
 int B53_SERDES_MII_REG (int ) ;
 int BMSR_ANEGCOMPLETE ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int DUPLEX_STATUS ;
 int LINK_STATUS ;
 int MII_BMSR ;
 int MLO_PAUSE_RX ;
 int MLO_PAUSE_TX ;
 int PAUSE_RESOLUTION_RX_SIDE ;
 int PAUSE_RESOLUTION_TX_SIDE ;
 int SERDES_DIGITAL_BLK ;
 int SERDES_MII_BLK ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SPEED_2500 ;




 int SPEED_STATUS_MASK ;
 int SPEED_STATUS_SHIFT ;
 scalar_t__ b53_serdes_map_lane (struct b53_device*,int) ;
 int b53_serdes_read (struct b53_device*,scalar_t__,int ,int ) ;

int b53_serdes_link_state(struct b53_device *dev, int port,
     struct phylink_link_state *state)
{
 u8 lane = b53_serdes_map_lane(dev, port);
 u16 dig, bmsr;

 if (lane == B53_INVALID_LANE)
  return 1;

 dig = b53_serdes_read(dev, lane, B53_SERDES_DIGITAL_STATUS,
         SERDES_DIGITAL_BLK);
 bmsr = b53_serdes_read(dev, lane, B53_SERDES_MII_REG(MII_BMSR),
          SERDES_MII_BLK);

 switch ((dig >> SPEED_STATUS_SHIFT) & SPEED_STATUS_MASK) {
 case 131:
  state->speed = SPEED_10;
  break;
 case 130:
  state->speed = SPEED_100;
  break;
 case 129:
  state->speed = SPEED_1000;
  break;
 default:
 case 128:
  state->speed = SPEED_2500;
  break;
 }

 state->duplex = dig & DUPLEX_STATUS ? DUPLEX_FULL : DUPLEX_HALF;
 state->an_complete = !!(bmsr & BMSR_ANEGCOMPLETE);
 state->link = !!(dig & LINK_STATUS);
 if (dig & PAUSE_RESOLUTION_RX_SIDE)
  state->pause |= MLO_PAUSE_RX;
 if (dig & PAUSE_RESOLUTION_TX_SIDE)
  state->pause |= MLO_PAUSE_TX;

 return 0;
}
