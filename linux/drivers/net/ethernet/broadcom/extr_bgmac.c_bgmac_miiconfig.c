
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bgmac {int feature_flags; void* mac_duplex; int mac_speed; } ;


 int BCMA_IOCTL ;
 int BGMAC_BCMA_IOCTL_SW_CLKEN ;
 int BGMAC_DEV_STATUS ;
 int BGMAC_DS_MM_MASK ;
 int BGMAC_DS_MM_SHIFT ;
 int BGMAC_FEAT_FORCE_SPEED_2500 ;
 int BGMAC_FEAT_IDM_MASK ;
 void* DUPLEX_FULL ;
 int SPEED_100 ;
 int SPEED_2500 ;
 int bgmac_idm_read (struct bgmac*,int ) ;
 int bgmac_idm_write (struct bgmac*,int ,int) ;
 int bgmac_mac_speed (struct bgmac*) ;
 int bgmac_read (struct bgmac*,int ) ;

__attribute__((used)) static void bgmac_miiconfig(struct bgmac *bgmac)
{
 if (bgmac->feature_flags & BGMAC_FEAT_FORCE_SPEED_2500) {
  if (!(bgmac->feature_flags & BGMAC_FEAT_IDM_MASK)) {
   bgmac_idm_write(bgmac, BCMA_IOCTL,
     bgmac_idm_read(bgmac, BCMA_IOCTL) |
     0x40 | BGMAC_BCMA_IOCTL_SW_CLKEN);
  }
  bgmac->mac_speed = SPEED_2500;
  bgmac->mac_duplex = DUPLEX_FULL;
  bgmac_mac_speed(bgmac);
 } else {
  u8 imode;

  imode = (bgmac_read(bgmac, BGMAC_DEV_STATUS) &
   BGMAC_DS_MM_MASK) >> BGMAC_DS_MM_SHIFT;
  if (imode == 0 || imode == 1) {
   bgmac->mac_speed = SPEED_100;
   bgmac->mac_duplex = DUPLEX_FULL;
   bgmac_mac_speed(bgmac);
  }
 }
}
