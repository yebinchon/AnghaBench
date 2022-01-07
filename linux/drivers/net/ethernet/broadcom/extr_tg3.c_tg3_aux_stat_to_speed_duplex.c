
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tg3 {int phy_flags; } ;


 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int DUPLEX_UNKNOWN ;
 int MII_TG3_AUX_STAT_100 ;






 int MII_TG3_AUX_STAT_FULL ;
 int MII_TG3_AUX_STAT_SPDMASK ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SPEED_UNKNOWN ;
 int TG3_PHYFLG_IS_FET ;

__attribute__((used)) static void tg3_aux_stat_to_speed_duplex(struct tg3 *tp, u32 val, u32 *speed, u8 *duplex)
{
 switch (val & MII_TG3_AUX_STAT_SPDMASK) {
 case 128:
  *speed = SPEED_10;
  *duplex = DUPLEX_HALF;
  break;

 case 129:
  *speed = SPEED_10;
  *duplex = DUPLEX_FULL;
  break;

 case 130:
  *speed = SPEED_100;
  *duplex = DUPLEX_HALF;
  break;

 case 131:
  *speed = SPEED_100;
  *duplex = DUPLEX_FULL;
  break;

 case 132:
  *speed = SPEED_1000;
  *duplex = DUPLEX_HALF;
  break;

 case 133:
  *speed = SPEED_1000;
  *duplex = DUPLEX_FULL;
  break;

 default:
  if (tp->phy_flags & TG3_PHYFLG_IS_FET) {
   *speed = (val & MII_TG3_AUX_STAT_100) ? SPEED_100 :
     SPEED_10;
   *duplex = (val & MII_TG3_AUX_STAT_FULL) ? DUPLEX_FULL :
      DUPLEX_HALF;
   break;
  }
  *speed = SPEED_UNKNOWN;
  *duplex = DUPLEX_UNKNOWN;
  break;
 }
}
