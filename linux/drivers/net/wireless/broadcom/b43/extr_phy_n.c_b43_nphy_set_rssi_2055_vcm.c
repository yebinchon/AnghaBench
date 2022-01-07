
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct b43_wldev {int dummy; } ;
typedef enum n_rssi_type { ____Placeholder_n_rssi_type } n_rssi_type ;


 int B2055_C1_B0NB_RSSIVCM ;
 int B2055_C1_RX_BB_RSSICTL5 ;
 int B2055_C2_B0NB_RSSIVCM ;
 int B2055_C2_RX_BB_RSSICTL5 ;
 int N_RSSI_NB ;
 int b43_radio_maskset (struct b43_wldev*,int ,int,int) ;

__attribute__((used)) static void b43_nphy_set_rssi_2055_vcm(struct b43_wldev *dev,
           enum n_rssi_type rssi_type, u8 *buf)
{
 int i;
 for (i = 0; i < 2; i++) {
  if (rssi_type == N_RSSI_NB) {
   if (i == 0) {
    b43_radio_maskset(dev, B2055_C1_B0NB_RSSIVCM,
        0xFC, buf[0]);
    b43_radio_maskset(dev, B2055_C1_RX_BB_RSSICTL5,
        0xFC, buf[1]);
   } else {
    b43_radio_maskset(dev, B2055_C2_B0NB_RSSIVCM,
        0xFC, buf[2 * i]);
    b43_radio_maskset(dev, B2055_C2_RX_BB_RSSICTL5,
        0xFC, buf[2 * i + 1]);
   }
  } else {
   if (i == 0)
    b43_radio_maskset(dev, B2055_C1_RX_BB_RSSICTL5,
        0xF3, buf[0] << 2);
   else
    b43_radio_maskset(dev, B2055_C2_RX_BB_RSSICTL5,
        0xF3, buf[2 * i + 1] << 2);
  }
 }
}
