
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43legacy_wldev {int dummy; } ;





 int B43legacy_BUG_ON (int) ;
 int B43legacy_SHM_SHARED ;
 int B43legacy_SHM_SH_ACKCTSPHYCTL ;
 int B43legacy_SHM_SH_BEACPHYCTL ;
 int B43legacy_SHM_SH_PRPHYCTL ;
 int B43legacy_TX4_PHY_ANT ;
 int B43legacy_TX4_PHY_ANT0 ;
 int B43legacy_TX4_PHY_ANT1 ;
 int B43legacy_TX4_PHY_ANTLAST ;
 int b43legacy_shm_read16 (struct b43legacy_wldev*,int ,int ) ;
 int b43legacy_shm_write16 (struct b43legacy_wldev*,int ,int ,int) ;

__attribute__((used)) static void b43legacy_mgmtframe_txantenna(struct b43legacy_wldev *dev,
       int antenna)
{
 u16 ant = 0;
 u16 tmp;

 switch (antenna) {
 case 130:
  ant |= B43legacy_TX4_PHY_ANT0;
  break;
 case 129:
  ant |= B43legacy_TX4_PHY_ANT1;
  break;
 case 128:
  ant |= B43legacy_TX4_PHY_ANTLAST;
  break;
 default:
  B43legacy_BUG_ON(1);
 }





 tmp = b43legacy_shm_read16(dev, B43legacy_SHM_SHARED,
       B43legacy_SHM_SH_BEACPHYCTL);
 tmp = (tmp & ~B43legacy_TX4_PHY_ANT) | ant;
 b43legacy_shm_write16(dev, B43legacy_SHM_SHARED,
         B43legacy_SHM_SH_BEACPHYCTL, tmp);

 tmp = b43legacy_shm_read16(dev, B43legacy_SHM_SHARED,
       B43legacy_SHM_SH_ACKCTSPHYCTL);
 tmp = (tmp & ~B43legacy_TX4_PHY_ANT) | ant;
 b43legacy_shm_write16(dev, B43legacy_SHM_SHARED,
         B43legacy_SHM_SH_ACKCTSPHYCTL, tmp);

 tmp = b43legacy_shm_read16(dev, B43legacy_SHM_SHARED,
       B43legacy_SHM_SH_PRPHYCTL);
 tmp = (tmp & ~B43legacy_TX4_PHY_ANT) | ant;
 b43legacy_shm_write16(dev, B43legacy_SHM_SHARED,
         B43legacy_SHM_SH_PRPHYCTL, tmp);
}
