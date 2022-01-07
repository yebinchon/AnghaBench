
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct b43_wldev {int dummy; } ;
typedef int s8 ;
typedef enum n_rssi_type { ____Placeholder_n_rssi_type } n_rssi_type ;
typedef enum n_rail_type { ____Placeholder_n_rail_type } n_rail_type ;


 int B43_NPHY_RSSIMC_0I_PWRDET ;
 int B43_NPHY_RSSIMC_0I_RSSI_X ;
 int B43_NPHY_RSSIMC_0I_RSSI_Y ;
 int B43_NPHY_RSSIMC_0I_RSSI_Z ;
 int B43_NPHY_RSSIMC_0I_TBD ;
 int B43_NPHY_RSSIMC_0I_TSSI ;
 int B43_NPHY_RSSIMC_0Q_PWRDET ;
 int B43_NPHY_RSSIMC_0Q_RSSI_X ;
 int B43_NPHY_RSSIMC_0Q_RSSI_Y ;
 int B43_NPHY_RSSIMC_0Q_RSSI_Z ;
 int B43_NPHY_RSSIMC_0Q_TBD ;
 int B43_NPHY_RSSIMC_0Q_TSSI ;
 int B43_NPHY_RSSIMC_1I_PWRDET ;
 int B43_NPHY_RSSIMC_1I_RSSI_X ;
 int B43_NPHY_RSSIMC_1I_RSSI_Y ;
 int B43_NPHY_RSSIMC_1I_RSSI_Z ;
 int B43_NPHY_RSSIMC_1I_TBD ;
 int B43_NPHY_RSSIMC_1I_TSSI ;
 int B43_NPHY_RSSIMC_1Q_PWRDET ;
 int B43_NPHY_RSSIMC_1Q_RSSI_X ;
 int B43_NPHY_RSSIMC_1Q_RSSI_Y ;
 int B43_NPHY_RSSIMC_1Q_RSSI_Z ;
 int B43_NPHY_RSSIMC_1Q_TBD ;
 int B43_NPHY_RSSIMC_1Q_TSSI ;
 int N_RAIL_I ;
 int N_RAIL_Q ;







 int b43_phy_write (struct b43_wldev*,int ,int) ;
 int clamp_val (int,int,int) ;

__attribute__((used)) static void b43_nphy_scale_offset_rssi(struct b43_wldev *dev, u16 scale,
     s8 offset, u8 core,
     enum n_rail_type rail,
     enum n_rssi_type rssi_type)
{
 u16 tmp;
 bool core1or5 = (core == 1) || (core == 5);
 bool core2or5 = (core == 2) || (core == 5);

 offset = clamp_val(offset, -32, 31);
 tmp = ((scale & 0x3F) << 8) | (offset & 0x3F);

 switch (rssi_type) {
 case 133:
  if (core1or5 && rail == N_RAIL_I)
   b43_phy_write(dev, B43_NPHY_RSSIMC_0I_RSSI_Z, tmp);
  if (core1or5 && rail == N_RAIL_Q)
   b43_phy_write(dev, B43_NPHY_RSSIMC_0Q_RSSI_Z, tmp);
  if (core2or5 && rail == N_RAIL_I)
   b43_phy_write(dev, B43_NPHY_RSSIMC_1I_RSSI_Z, tmp);
  if (core2or5 && rail == N_RAIL_Q)
   b43_phy_write(dev, B43_NPHY_RSSIMC_1Q_RSSI_Z, tmp);
  break;
 case 129:
  if (core1or5 && rail == N_RAIL_I)
   b43_phy_write(dev, B43_NPHY_RSSIMC_0I_RSSI_X, tmp);
  if (core1or5 && rail == N_RAIL_Q)
   b43_phy_write(dev, B43_NPHY_RSSIMC_0Q_RSSI_X, tmp);
  if (core2or5 && rail == N_RAIL_I)
   b43_phy_write(dev, B43_NPHY_RSSIMC_1I_RSSI_X, tmp);
  if (core2or5 && rail == N_RAIL_Q)
   b43_phy_write(dev, B43_NPHY_RSSIMC_1Q_RSSI_X, tmp);
  break;
 case 128:
  if (core1or5 && rail == N_RAIL_I)
   b43_phy_write(dev, B43_NPHY_RSSIMC_0I_RSSI_Y, tmp);
  if (core1or5 && rail == N_RAIL_Q)
   b43_phy_write(dev, B43_NPHY_RSSIMC_0Q_RSSI_Y, tmp);
  if (core2or5 && rail == N_RAIL_I)
   b43_phy_write(dev, B43_NPHY_RSSIMC_1I_RSSI_Y, tmp);
  if (core2or5 && rail == N_RAIL_Q)
   b43_phy_write(dev, B43_NPHY_RSSIMC_1Q_RSSI_Y, tmp);
  break;
 case 132:
  if (core1or5 && rail == N_RAIL_I)
   b43_phy_write(dev, B43_NPHY_RSSIMC_0I_TBD, tmp);
  if (core1or5 && rail == N_RAIL_Q)
   b43_phy_write(dev, B43_NPHY_RSSIMC_0Q_TBD, tmp);
  if (core2or5 && rail == N_RAIL_I)
   b43_phy_write(dev, B43_NPHY_RSSIMC_1I_TBD, tmp);
  if (core2or5 && rail == N_RAIL_Q)
   b43_phy_write(dev, B43_NPHY_RSSIMC_1Q_TBD, tmp);
  break;
 case 134:
  if (core1or5 && rail == N_RAIL_I)
   b43_phy_write(dev, B43_NPHY_RSSIMC_0I_PWRDET, tmp);
  if (core1or5 && rail == N_RAIL_Q)
   b43_phy_write(dev, B43_NPHY_RSSIMC_0Q_PWRDET, tmp);
  if (core2or5 && rail == N_RAIL_I)
   b43_phy_write(dev, B43_NPHY_RSSIMC_1I_PWRDET, tmp);
  if (core2or5 && rail == N_RAIL_Q)
   b43_phy_write(dev, B43_NPHY_RSSIMC_1Q_PWRDET, tmp);
  break;
 case 131:
  if (core1or5)
   b43_phy_write(dev, B43_NPHY_RSSIMC_0I_TSSI, tmp);
  if (core2or5)
   b43_phy_write(dev, B43_NPHY_RSSIMC_1I_TSSI, tmp);
  break;
 case 130:
  if (core1or5)
   b43_phy_write(dev, B43_NPHY_RSSIMC_0Q_TSSI, tmp);
  if (core2or5)
   b43_phy_write(dev, B43_NPHY_RSSIMC_1Q_TSSI, tmp);
  break;
 }
}
